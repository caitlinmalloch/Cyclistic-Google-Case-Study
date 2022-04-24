{
 "cells": [
  {
   "attachments": {
    "afb8dd39-7be3-42c1-a76f-67d4491eeeee.png": {
     "image/png": "UklGRl4EAABXRUJQVlA4IFIEAACQFQCdASqAACAAPnEukUYkoqGhN/K4AJAOCWwAzFBRPjeq8SJtCZK9YU4DlYP1m9wH6b/6P2AeSB6gPQA/s3+q6wD0HfKi/Y34IP2x/ar4Cf12/8NKQx9/DvvB2pt124nwgaS9mr9qeBQ0pITxh72hK+Yui1Da7j5fsNgbYY3pGLHYLl6lVUvzckCOeTQ+bOS16U0NeHSyTYTY9E+DsqJgR671eF9MrpU9y8/CvdebyOSd+LDgAP7+XUxwpVy+SmWYvsrJgqYn7igvqEXOWD7K5YYVaviLfcjD9AraJvg+9vGapq3Zx9F2fxGBuDGs+WsvrAKtKHFrQ0hVdw9q76NOhg1MpMs5nZ+7kcuy12xUVx/McCl59PPXeu18ZSvMBUGsWKvo9EdamyNyBSlhq7t4r88X3gNv0dNPAwhUEtebgZy/BPvQjQaOmaAvFp3uin2QlfxFf7bmD0X2XSfQWW1WtlXHaKHRgigclAUqwd1NfYmwqC2PmH0U10rUjy/ts06SUTYg57LlZ/c1I7SRZoWaT5C47xW26IKIDVUt1U2IRCr6D3c7yOm+vFfeIO13t6nFca8fmy5PYD/C7+0hG78guoZp55wB8brKxwjk6nJPg2DIRgvhf1vTmH/iZb/01Qqd8BLHqf0tEhoaM8bKLGzLDfTRHsWzehebeNWuFTFs24uYTOxL+3b9mzKfE+2bPuXZyjudKTqFTC2SQQk+4Bo/204WwtVAbu2sbzzJtqfCEAV3x6HMBcbRoooRHCP6Eh2IEzXYPzcSQLlWw+0f/6aYz6W4gyxHNDHMWTFarG8q2d04wIrC40/Xd/P/7FUTzESrILRKurfkv7oAA8GcHqKTcFal63k8VgsP97uVESVs3ZmODhaNdUOJDIInqEGBDNKJYcwm98T0Foyoqp0Jjz9joflUkkPn345jlVvuN8mNGR5e31TGn3tn9mDxdBuDjx/4sAFtHmg7ba2D3+1qVV7/EzehXggXeoug6fto9WJbzWziMnaThWqsH2KSI16imz2T7pTt/c8F6Oegi1eNS+3HtXnmI7JVPjGxsCoptTNXux04P98JJm+yiGYbQhsHNx1oZwhWhBPjbQ+1hCjfiVRv2qQwVgb39iQ4qGtdrYbxk/ch6xx4ipJ9JZyoMysj5vJXfMjj8WHPHcgfiTcxnWfiP8t26RdmBPWt0OIHoAW3RPd1cpQ7Bk8bk5vELAzhDd+HZdNjvx3GM9s9uegxwWsFA0mpaW/hliqkG/NmOdw1yANXIqNSmpjl+R31UGVelyOw3m3Dm9hUabJQL2rkK4jM//XWp/TD498v/GSjtT8/sOVppnDpiTZ58TRWnOe8q+b38fqdGskAVsPi/k0mqqPbk7XaGmCsd69/FHix+YRk4RHIwxQXfLGlIgOcsFKa11pd+exxQF3dlODn/mPmJGaO5KPa220cio4aTtczpR9+WgeJ54RymOeZlXAYVzpoIAAAAA=="
    },
    "e9ea945a-98f4-427a-8179-fcb343a9362a.png": {
     "image/png": "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"
    }
   },
   "cell_type": "markdown",
   "id": "760f8627",
   "metadata": {
    "papermill": {
     "duration": 0.013831,
     "end_time": "2022-04-24T03:12:57.837449",
     "exception": false,
     "start_time": "2022-04-24T03:12:57.823618",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Cyclistic Bike Share\n",
    "![cyclistic logo.png](attachment:e9ea945a-98f4-427a-8179-fcb343a9362a.png)\n",
    "\n",
    "> ### Data Analysis by Caitlin Malloch\n",
    "> ### Google Data Analytics Professional Certificate Capstone Project 1\n",
    "![Coursera_Google logo.png](attachment:afb8dd39-7be3-42c1-a76f-67d4491eeeee.png)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "26f9c0a4",
   "metadata": {
    "papermill": {
     "duration": 0.012125,
     "end_time": "2022-04-24T03:12:57.863562",
     "exception": false,
     "start_time": "2022-04-24T03:12:57.851437",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Scenario\n",
    "Cyclistic is a bike sharing company based in Chicago. As a junior data analyst on their marketing analytics team, the company asks you to find differences between the casual riders and membership riders using the dataset found at the link below. Provide insights and recommendations for Cyclistic based on the differences found between the two user types. \n",
    "\n",
    "Dataset: http://divvy-tripdata.s3.amazonaws.com/index.html. \n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "01d4f434",
   "metadata": {
    "papermill": {
     "duration": 0.012372,
     "end_time": "2022-04-24T03:12:57.888086",
     "exception": false,
     "start_time": "2022-04-24T03:12:57.875714",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Objective\n",
    "\n",
    "Identify how annual members and casual riders use Cyclistic bikes differently."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "43306700",
   "metadata": {
    "papermill": {
     "duration": 0.012158,
     "end_time": "2022-04-24T03:12:57.912675",
     "exception": false,
     "start_time": "2022-04-24T03:12:57.900517",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Data Cleaning"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "6a2ca1a5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:12:57.942950Z",
     "iopub.status.busy": "2022-04-24T03:12:57.940427Z",
     "iopub.status.idle": "2022-04-24T03:12:59.513443Z",
     "shell.execute_reply": "2022-04-24T03:12:59.511234Z"
    },
    "papermill": {
     "duration": 1.590949,
     "end_time": "2022-04-24T03:12:59.516099",
     "exception": false,
     "start_time": "2022-04-24T03:12:57.925150",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.1 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.5     \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.6     \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.8\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.2.0     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.1.2     \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.1\n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse) #Load tidyverse packages for cleaning and analysis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "27d25508",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:12:59.580836Z",
     "iopub.status.busy": "2022-04-24T03:12:59.544405Z",
     "iopub.status.idle": "2022-04-24T03:12:59.617405Z",
     "shell.execute_reply": "2022-04-24T03:12:59.615255Z"
    },
    "papermill": {
     "duration": 0.091007,
     "end_time": "2022-04-24T03:12:59.620011",
     "exception": false,
     "start_time": "2022-04-24T03:12:59.529004",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘lubridate’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(lubridate) #This package helps clean date formats in the data before analysis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "53c7bbc4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:12:59.650068Z",
     "iopub.status.busy": "2022-04-24T03:12:59.648168Z",
     "iopub.status.idle": "2022-04-24T03:14:06.909261Z",
     "shell.execute_reply": "2022-04-24T03:14:06.907066Z"
    },
    "papermill": {
     "duration": 67.279289,
     "end_time": "2022-04-24T03:14:06.912395",
     "exception": false,
     "start_time": "2022-04-24T03:12:59.633106",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#load the files from the cyclistic dataset\n",
    "q1_2020 <- read.csv('../input/cyclistic-12-months-dataset/Divvy_Trips_2020_Q1/Divvy_Trips_2020_Q1.csv')\n",
    "q2_2019 <- read.csv('../input/cyclistic-12-months-dataset/Divvy_Trips_2019_Q2.csv/Divvy_Trips_2019_Q2.csv')\n",
    "q3_2019 <- read.csv('../input/cyclistic-12-months-dataset/Divvy_Trips_2019_Q3/Divvy_Trips_2019_Q3.csv')\n",
    "q4_2019 <- read.csv('../input/cyclistic-12-months-dataset/Divvy_Trips_2019_Q4/Divvy_Trips_2019_Q4.csv') "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "20b3a4d3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:06.943959Z",
     "iopub.status.busy": "2022-04-24T03:14:06.942110Z",
     "iopub.status.idle": "2022-04-24T03:14:06.984468Z",
     "shell.execute_reply": "2022-04-24T03:14:06.982474Z"
    },
    "papermill": {
     "duration": 0.060146,
     "end_time": "2022-04-24T03:14:06.987091",
     "exception": false,
     "start_time": "2022-04-24T03:14:06.926945",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'X01...Rental.Details.Rental.ID'</li><li>'X01...Rental.Details.Local.Start.Time'</li><li>'X01...Rental.Details.Local.End.Time'</li><li>'X01...Rental.Details.Bike.ID'</li><li>'X01...Rental.Details.Duration.In.Seconds.Uncapped'</li><li>'X03...Rental.Start.Station.ID'</li><li>'X03...Rental.Start.Station.Name'</li><li>'X02...Rental.End.Station.ID'</li><li>'X02...Rental.End.Station.Name'</li><li>'User.Type'</li><li>'Member.Gender'</li><li>'X05...Member.Details.Member.Birthday.Year'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'X01...Rental.Details.Rental.ID'\n",
       "\\item 'X01...Rental.Details.Local.Start.Time'\n",
       "\\item 'X01...Rental.Details.Local.End.Time'\n",
       "\\item 'X01...Rental.Details.Bike.ID'\n",
       "\\item 'X01...Rental.Details.Duration.In.Seconds.Uncapped'\n",
       "\\item 'X03...Rental.Start.Station.ID'\n",
       "\\item 'X03...Rental.Start.Station.Name'\n",
       "\\item 'X02...Rental.End.Station.ID'\n",
       "\\item 'X02...Rental.End.Station.Name'\n",
       "\\item 'User.Type'\n",
       "\\item 'Member.Gender'\n",
       "\\item 'X05...Member.Details.Member.Birthday.Year'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'X01...Rental.Details.Rental.ID'\n",
       "2. 'X01...Rental.Details.Local.Start.Time'\n",
       "3. 'X01...Rental.Details.Local.End.Time'\n",
       "4. 'X01...Rental.Details.Bike.ID'\n",
       "5. 'X01...Rental.Details.Duration.In.Seconds.Uncapped'\n",
       "6. 'X03...Rental.Start.Station.ID'\n",
       "7. 'X03...Rental.Start.Station.Name'\n",
       "8. 'X02...Rental.End.Station.ID'\n",
       "9. 'X02...Rental.End.Station.Name'\n",
       "10. 'User.Type'\n",
       "11. 'Member.Gender'\n",
       "12. 'X05...Member.Details.Member.Birthday.Year'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"X01...Rental.Details.Rental.ID\"                   \n",
       " [2] \"X01...Rental.Details.Local.Start.Time\"            \n",
       " [3] \"X01...Rental.Details.Local.End.Time\"              \n",
       " [4] \"X01...Rental.Details.Bike.ID\"                     \n",
       " [5] \"X01...Rental.Details.Duration.In.Seconds.Uncapped\"\n",
       " [6] \"X03...Rental.Start.Station.ID\"                    \n",
       " [7] \"X03...Rental.Start.Station.Name\"                  \n",
       " [8] \"X02...Rental.End.Station.ID\"                      \n",
       " [9] \"X02...Rental.End.Station.Name\"                    \n",
       "[10] \"User.Type\"                                        \n",
       "[11] \"Member.Gender\"                                    \n",
       "[12] \"X05...Member.Details.Member.Birthday.Year\"        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'trip_id'</li><li>'start_time'</li><li>'end_time'</li><li>'bikeid'</li><li>'tripduration'</li><li>'from_station_id'</li><li>'from_station_name'</li><li>'to_station_id'</li><li>'to_station_name'</li><li>'usertype'</li><li>'gender'</li><li>'birthyear'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'trip\\_id'\n",
       "\\item 'start\\_time'\n",
       "\\item 'end\\_time'\n",
       "\\item 'bikeid'\n",
       "\\item 'tripduration'\n",
       "\\item 'from\\_station\\_id'\n",
       "\\item 'from\\_station\\_name'\n",
       "\\item 'to\\_station\\_id'\n",
       "\\item 'to\\_station\\_name'\n",
       "\\item 'usertype'\n",
       "\\item 'gender'\n",
       "\\item 'birthyear'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'trip_id'\n",
       "2. 'start_time'\n",
       "3. 'end_time'\n",
       "4. 'bikeid'\n",
       "5. 'tripduration'\n",
       "6. 'from_station_id'\n",
       "7. 'from_station_name'\n",
       "8. 'to_station_id'\n",
       "9. 'to_station_name'\n",
       "10. 'usertype'\n",
       "11. 'gender'\n",
       "12. 'birthyear'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"trip_id\"           \"start_time\"        \"end_time\"         \n",
       " [4] \"bikeid\"            \"tripduration\"      \"from_station_id\"  \n",
       " [7] \"from_station_name\" \"to_station_id\"     \"to_station_name\"  \n",
       "[10] \"usertype\"          \"gender\"            \"birthyear\"        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'trip_id'</li><li>'start_time'</li><li>'end_time'</li><li>'bikeid'</li><li>'tripduration'</li><li>'from_station_id'</li><li>'from_station_name'</li><li>'to_station_id'</li><li>'to_station_name'</li><li>'usertype'</li><li>'gender'</li><li>'birthyear'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'trip\\_id'\n",
       "\\item 'start\\_time'\n",
       "\\item 'end\\_time'\n",
       "\\item 'bikeid'\n",
       "\\item 'tripduration'\n",
       "\\item 'from\\_station\\_id'\n",
       "\\item 'from\\_station\\_name'\n",
       "\\item 'to\\_station\\_id'\n",
       "\\item 'to\\_station\\_name'\n",
       "\\item 'usertype'\n",
       "\\item 'gender'\n",
       "\\item 'birthyear'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'trip_id'\n",
       "2. 'start_time'\n",
       "3. 'end_time'\n",
       "4. 'bikeid'\n",
       "5. 'tripduration'\n",
       "6. 'from_station_id'\n",
       "7. 'from_station_name'\n",
       "8. 'to_station_id'\n",
       "9. 'to_station_name'\n",
       "10. 'usertype'\n",
       "11. 'gender'\n",
       "12. 'birthyear'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"trip_id\"           \"start_time\"        \"end_time\"         \n",
       " [4] \"bikeid\"            \"tripduration\"      \"from_station_id\"  \n",
       " [7] \"from_station_name\" \"to_station_id\"     \"to_station_name\"  \n",
       "[10] \"usertype\"          \"gender\"            \"birthyear\"        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#check the column names\n",
    "colnames(q1_2020)\n",
    "colnames(q2_2019)\n",
    "colnames(q3_2019)\n",
    "colnames(q4_2019)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "4c9d32f4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:07.018720Z",
     "iopub.status.busy": "2022-04-24T03:14:07.016845Z",
     "iopub.status.idle": "2022-04-24T03:14:07.090527Z",
     "shell.execute_reply": "2022-04-24T03:14:07.088349Z"
    },
    "papermill": {
     "duration": 0.09221,
     "end_time": "2022-04-24T03:14:07.093213",
     "exception": false,
     "start_time": "2022-04-24T03:14:07.001003",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'started_at'</li><li>'ended_at'</li><li>'member_casual'</li><li>'start_station_id'</li><li>'end_station_id'</li><li>'start_station_name'</li><li>'end_station_name'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'member\\_casual'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'started_at'\n",
       "3. 'ended_at'\n",
       "4. 'member_casual'\n",
       "5. 'start_station_id'\n",
       "6. 'end_station_id'\n",
       "7. 'start_station_name'\n",
       "8. 'end_station_name'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"ride_id\"            \"started_at\"         \"ended_at\"          \n",
       "[4] \"member_casual\"      \"start_station_id\"   \"end_station_id\"    \n",
       "[7] \"start_station_name\" \"end_station_name\"  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Clean column names\n",
    "q1<- q1_2020 %>% \n",
    "     select(ride_id,started_at,ended_at,member_casual,start_station_id,end_station_id,\n",
    "           start_station_name,end_station_name)\n",
    "colnames(q1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "f08624f2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:07.124739Z",
     "iopub.status.busy": "2022-04-24T03:14:07.122811Z",
     "iopub.status.idle": "2022-04-24T03:14:07.162704Z",
     "shell.execute_reply": "2022-04-24T03:14:07.160605Z"
    },
    "papermill": {
     "duration": 0.058352,
     "end_time": "2022-04-24T03:14:07.165183",
     "exception": false,
     "start_time": "2022-04-24T03:14:07.106831",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'started_at'\n",
       "3. 'ended_at'\n",
       "4. 'start_station_name'\n",
       "5. 'start_station_id'\n",
       "6. 'end_station_name'\n",
       "7. 'end_station_id'\n",
       "8. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"ride_id\"            \"started_at\"         \"ended_at\"          \n",
       "[4] \"start_station_name\" \"start_station_id\"   \"end_station_name\"  \n",
       "[7] \"end_station_id\"     \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Clean column names to be consistent with all other 3 files\n",
    "q2<-q2_2019%>%\n",
    "    select( 'X01...Rental.Details.Rental.ID',\n",
    "            'X01...Rental.Details.Local.Start.Time', \n",
    "            'X01...Rental.Details.Local.End.Time',  \n",
    "            'X03...Rental.Start.Station.Name', \n",
    "            'X03...Rental.Start.Station.ID',\n",
    "            'X02...Rental.End.Station.Name', \n",
    "            'X02...Rental.End.Station.ID', \n",
    "            'User.Type' )%>%\n",
    "    rename( ride_id = 'X01...Rental.Details.Rental.ID',\n",
    "            started_at = 'X01...Rental.Details.Local.Start.Time',  \n",
    "            ended_at = 'X01...Rental.Details.Local.End.Time',  \n",
    "            start_station_name = 'X03...Rental.Start.Station.Name',\n",
    "            start_station_id = 'X03...Rental.Start.Station.ID',\n",
    "            end_station_name = 'X02...Rental.End.Station.Name', \n",
    "            end_station_id = 'X02...Rental.End.Station.ID',\n",
    "            member_casual = 'User.Type')\n",
    "colnames(q2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "4417fa06",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:07.197127Z",
     "iopub.status.busy": "2022-04-24T03:14:07.195204Z",
     "iopub.status.idle": "2022-04-24T03:14:07.235904Z",
     "shell.execute_reply": "2022-04-24T03:14:07.233760Z"
    },
    "papermill": {
     "duration": 0.059603,
     "end_time": "2022-04-24T03:14:07.238552",
     "exception": false,
     "start_time": "2022-04-24T03:14:07.178949",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'started_at'\n",
       "3. 'ended_at'\n",
       "4. 'start_station_name'\n",
       "5. 'start_station_id'\n",
       "6. 'end_station_name'\n",
       "7. 'end_station_id'\n",
       "8. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"ride_id\"            \"started_at\"         \"ended_at\"          \n",
       "[4] \"start_station_name\" \"start_station_id\"   \"end_station_name\"  \n",
       "[7] \"end_station_id\"     \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#update column names to be consistent with other files\n",
    "q3<- q3_2019 %>%\n",
    "   select  (trip_id,\n",
    "            start_time,  \n",
    "            end_time,  \n",
    "            from_station_name, \n",
    "            from_station_id, \n",
    "            to_station_name, \n",
    "            to_station_id, \n",
    "            usertype )%>%\n",
    "    rename( ride_id = trip_id,\n",
    "            started_at = start_time,  \n",
    "            ended_at = end_time, \n",
    "            start_station_name = from_station_name, \n",
    "            start_station_id = from_station_id, \n",
    "            end_station_name = to_station_name, \n",
    "            end_station_id = to_station_id, \n",
    "            member_casual = usertype)\n",
    "colnames(q3)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "60f44cb8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:07.270978Z",
     "iopub.status.busy": "2022-04-24T03:14:07.269002Z",
     "iopub.status.idle": "2022-04-24T03:14:07.308939Z",
     "shell.execute_reply": "2022-04-24T03:14:07.306760Z"
    },
    "papermill": {
     "duration": 0.058838,
     "end_time": "2022-04-24T03:14:07.311497",
     "exception": false,
     "start_time": "2022-04-24T03:14:07.252659",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'started_at'\n",
       "3. 'ended_at'\n",
       "4. 'start_station_name'\n",
       "5. 'start_station_id'\n",
       "6. 'end_station_name'\n",
       "7. 'end_station_id'\n",
       "8. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"ride_id\"            \"started_at\"         \"ended_at\"          \n",
       "[4] \"start_station_name\" \"start_station_id\"   \"end_station_name\"  \n",
       "[7] \"end_station_id\"     \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#update column names to be consistent with other files\n",
    "q4<-q4_2019%>%\n",
    "    select( trip_id,\n",
    "            start_time,  \n",
    "            end_time,  \n",
    "            from_station_name, \n",
    "            from_station_id, \n",
    "            to_station_name, \n",
    "            to_station_id, \n",
    "            usertype )%>%\n",
    "    rename( ride_id = trip_id,\n",
    "            started_at = start_time,  \n",
    "            ended_at = end_time, \n",
    "            start_station_name = from_station_name, \n",
    "            start_station_id = from_station_id, \n",
    "            end_station_name = to_station_name, \n",
    "            end_station_id = to_station_id, \n",
    "            member_casual = usertype)\n",
    "colnames(q4)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "8bafae49",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:07.344336Z",
     "iopub.status.busy": "2022-04-24T03:14:07.342487Z",
     "iopub.status.idle": "2022-04-24T03:14:07.436144Z",
     "shell.execute_reply": "2022-04-24T03:14:07.433708Z"
    },
    "papermill": {
     "duration": 0.114287,
     "end_time": "2022-04-24T03:14:07.439966",
     "exception": false,
     "start_time": "2022-04-24T03:14:07.325679",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t426887 obs. of  8 variables:\n",
      " $ ride_id           : chr  \"EACB19130B0CDA4A\" \"8FED874C809DC021\" \"789F3C21E472CA96\" \"C9A388DAC6ABF313\" ...\n",
      " $ started_at        : chr  \"2020-01-21 20:06:59\" \"2020-01-30 14:22:39\" \"2020-01-09 19:29:26\" \"2020-01-06 16:17:07\" ...\n",
      " $ ended_at          : chr  \"2020-01-21 20:14:30\" \"2020-01-30 14:26:22\" \"2020-01-09 19:32:17\" \"2020-01-06 16:25:56\" ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      " $ start_station_id  : int  239 234 296 51 66 212 96 96 212 38 ...\n",
      " $ end_station_id    : int  326 318 117 24 212 96 212 212 96 100 ...\n",
      " $ start_station_name: chr  \"Western Ave & Leland Ave\" \"Clark St & Montrose Ave\" \"Broadway & Belmont Ave\" \"Clark St & Randolph St\" ...\n",
      " $ end_station_name  : chr  \"Clark St & Leland Ave\" \"Southport Ave & Irving Park Rd\" \"Wilton Ave & Belmont Ave\" \"Fairbanks Ct & Grand Ave\" ...\n",
      "'data.frame':\t1108163 obs. of  8 variables:\n",
      " $ ride_id           : int  22178529 22178530 22178531 22178532 22178533 22178534 22178535 22178536 22178537 22178538 ...\n",
      " $ started_at        : chr  \"2019-04-01 00:02:22\" \"2019-04-01 00:03:02\" \"2019-04-01 00:11:07\" \"2019-04-01 00:13:01\" ...\n",
      " $ ended_at          : chr  \"2019-04-01 00:09:48\" \"2019-04-01 00:20:30\" \"2019-04-01 00:15:19\" \"2019-04-01 00:18:58\" ...\n",
      " $ start_station_name: chr  \"Daley Center Plaza\" \"Wood St & Taylor St\" \"LaSalle St & Jackson Blvd\" \"McClurg Ct & Illinois St\" ...\n",
      " $ start_station_id  : int  81 317 283 26 202 420 503 260 211 211 ...\n",
      " $ end_station_name  : chr  \"Desplaines St & Kinzie St\" \"Wabash Ave & Roosevelt Rd\" \"Canal St & Madison St\" \"Kingsbury St & Kinzie St\" ...\n",
      " $ end_station_id    : int  56 59 174 133 129 426 500 499 211 211 ...\n",
      " $ member_casual     : chr  \"Subscriber\" \"Subscriber\" \"Subscriber\" \"Subscriber\" ...\n",
      "'data.frame':\t1640718 obs. of  8 variables:\n",
      " $ ride_id           : int  23479388 23479389 23479390 23479391 23479392 23479393 23479394 23479395 23479396 23479397 ...\n",
      " $ started_at        : chr  \"2019-07-01 00:00:27\" \"2019-07-01 00:01:16\" \"2019-07-01 00:01:48\" \"2019-07-01 00:02:07\" ...\n",
      " $ ended_at          : chr  \"2019-07-01 00:20:41\" \"2019-07-01 00:18:44\" \"2019-07-01 00:27:42\" \"2019-07-01 00:27:10\" ...\n",
      " $ start_station_name: chr  \"Wilton Ave & Belmont Ave\" \"Western Ave & Monroe St\" \"Lakeview Ave & Fullerton Pkwy\" \"Lakeview Ave & Fullerton Pkwy\" ...\n",
      " $ start_station_id  : int  117 381 313 313 168 300 168 313 43 43 ...\n",
      " $ end_station_name  : chr  \"Kimball Ave & Belmont Ave\" \"Western Ave & 21st St\" \"Larrabee St & Webster Ave\" \"Larrabee St & Webster Ave\" ...\n",
      " $ end_station_id    : int  497 203 144 144 62 232 62 144 195 195 ...\n",
      " $ member_casual     : chr  \"Subscriber\" \"Customer\" \"Customer\" \"Customer\" ...\n",
      "'data.frame':\t704054 obs. of  8 variables:\n",
      " $ ride_id           : int  25223640 25223641 25223642 25223643 25223644 25223645 25223646 25223647 25223648 25223649 ...\n",
      " $ started_at        : chr  \"2019-10-01 00:01:39\" \"2019-10-01 00:02:16\" \"2019-10-01 00:04:32\" \"2019-10-01 00:04:32\" ...\n",
      " $ ended_at          : chr  \"2019-10-01 00:17:20\" \"2019-10-01 00:06:34\" \"2019-10-01 00:18:43\" \"2019-10-01 00:43:43\" ...\n",
      " $ start_station_name: chr  \"Sheffield Ave & Kingsbury St\" \"Throop (Loomis) St & Taylor St\" \"Milwaukee Ave & Grand Ave\" \"Lakeview Ave & Fullerton Pkwy\" ...\n",
      " $ start_station_id  : int  20 19 84 313 210 156 84 156 156 336 ...\n",
      " $ end_station_name  : chr  \"Leavitt St & Armitage Ave\" \"Morgan St & Polk St\" \"Wabash Ave & Grand Ave\" \"Kedzie Ave & Palmer Ct\" ...\n",
      " $ end_station_id    : int  309 241 199 290 382 226 142 463 463 336 ...\n",
      " $ member_casual     : chr  \"Subscriber\" \"Subscriber\" \"Subscriber\" \"Subscriber\" ...\n"
     ]
    }
   ],
   "source": [
    "#inspect dataframes q1, q2, q3, and q4\n",
    "str(q1)\n",
    "str(q2)\n",
    "str(q3)\n",
    "str(q4) "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "8276b627",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:07.475205Z",
     "iopub.status.busy": "2022-04-24T03:14:07.473317Z",
     "iopub.status.idle": "2022-04-24T03:14:07.512959Z",
     "shell.execute_reply": "2022-04-24T03:14:07.510737Z"
    },
    "papermill": {
     "duration": 0.060867,
     "end_time": "2022-04-24T03:14:07.516365",
     "exception": false,
     "start_time": "2022-04-24T03:14:07.455498",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#convert data types for consistency to be stackable, ride_id is currently showing as an int so we need it to be a character like in q1\n",
    "q2 <-  mutate(q2, ride_id = as.character(ride_id))\n",
    "q3 <-  mutate(q3, ride_id = as.character(ride_id))\n",
    "q4 <-  mutate(q4, ride_id = as.character(ride_id))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "4297c567",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:07.550581Z",
     "iopub.status.busy": "2022-04-24T03:14:07.548740Z",
     "iopub.status.idle": "2022-04-24T03:14:20.759563Z",
     "shell.execute_reply": "2022-04-24T03:14:20.756511Z"
    },
    "papermill": {
     "duration": 13.232239,
     "end_time": "2022-04-24T03:14:20.763577",
     "exception": false,
     "start_time": "2022-04-24T03:14:07.531338",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>member_casual</th><th scope=col>start_station_id</th><th scope=col>end_station_id</th><th scope=col>start_station_name</th><th scope=col>end_station_name</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>EACB19130B0CDA4A</td><td>2020-01-21 20:06:59</td><td>2020-01-21 20:14:30</td><td>member</td><td>239</td><td>326</td><td>Western Ave &amp; Leland Ave</td><td><span style=white-space:pre-wrap>Clark St &amp; Leland Ave         </span></td></tr>\n",
       "\t<tr><th scope=row>2</th><td>8FED874C809DC021</td><td>2020-01-30 14:22:39</td><td>2020-01-30 14:26:22</td><td>member</td><td>234</td><td>318</td><td>Clark St &amp; Montrose Ave </td><td>Southport Ave &amp; Irving Park Rd</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & ride\\_id & started\\_at & ended\\_at & member\\_casual & start\\_station\\_id & end\\_station\\_id & start\\_station\\_name & end\\_station\\_name\\\\\n",
       "  & <chr> & <chr> & <chr> & <chr> & <int> & <int> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & EACB19130B0CDA4A & 2020-01-21 20:06:59 & 2020-01-21 20:14:30 & member & 239 & 326 & Western Ave \\& Leland Ave & Clark St \\& Leland Ave         \\\\\n",
       "\t2 & 8FED874C809DC021 & 2020-01-30 14:22:39 & 2020-01-30 14:26:22 & member & 234 & 318 & Clark St \\& Montrose Ave  & Southport Ave \\& Irving Park Rd\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 8\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | started_at &lt;chr&gt; | ended_at &lt;chr&gt; | member_casual &lt;chr&gt; | start_station_id &lt;int&gt; | end_station_id &lt;int&gt; | start_station_name &lt;chr&gt; | end_station_name &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | EACB19130B0CDA4A | 2020-01-21 20:06:59 | 2020-01-21 20:14:30 | member | 239 | 326 | Western Ave &amp; Leland Ave | Clark St &amp; Leland Ave          |\n",
       "| 2 | 8FED874C809DC021 | 2020-01-30 14:22:39 | 2020-01-30 14:26:22 | member | 234 | 318 | Clark St &amp; Montrose Ave  | Southport Ave &amp; Irving Park Rd |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          started_at          ended_at            member_casual\n",
       "1 EACB19130B0CDA4A 2020-01-21 20:06:59 2020-01-21 20:14:30 member       \n",
       "2 8FED874C809DC021 2020-01-30 14:22:39 2020-01-30 14:26:22 member       \n",
       "  start_station_id end_station_id start_station_name      \n",
       "1 239              326            Western Ave & Leland Ave\n",
       "2 234              318            Clark St & Montrose Ave \n",
       "  end_station_name              \n",
       "1 Clark St & Leland Ave         \n",
       "2 Southport Ave & Irving Park Rd"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#use rbind to combine the dataset into one dataframe\n",
    "all_data <- rbind(q1,q2,q3,q4)\n",
    "head(all_data,2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "7c70b1df",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:20.800431Z",
     "iopub.status.busy": "2022-04-24T03:14:20.797839Z",
     "iopub.status.idle": "2022-04-24T03:14:20.824248Z",
     "shell.execute_reply": "2022-04-24T03:14:20.821444Z"
    },
    "papermill": {
     "duration": 0.047993,
     "end_time": "2022-04-24T03:14:20.827882",
     "exception": false,
     "start_time": "2022-04-24T03:14:20.779889",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>3879822</li><li>8</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 3879822\n",
       "\\item 8\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 3879822\n",
       "2. 8\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 3879822       8"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#get dimensions of the dataframe\n",
    "dim(all_data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "f9152b6b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:20.865950Z",
     "iopub.status.busy": "2022-04-24T03:14:20.863756Z",
     "iopub.status.idle": "2022-04-24T03:14:25.568622Z",
     "shell.execute_reply": "2022-04-24T03:14:25.566357Z"
    },
    "papermill": {
     "duration": 4.726724,
     "end_time": "2022-04-24T03:14:25.571142",
     "exception": false,
     "start_time": "2022-04-24T03:14:20.844418",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#mutate the member_casual column with the recode function \n",
    "all_data <-  all_data %>% \n",
    "    mutate(member_casual = recode(member_casual\n",
    "                                  ,\"Subscriber\" = \"member\"\n",
    "                                  ,\"Customer\" = \"casual\"))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "276a991a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:25.605440Z",
     "iopub.status.busy": "2022-04-24T03:14:25.603585Z",
     "iopub.status.idle": "2022-04-24T03:14:26.753236Z",
     "shell.execute_reply": "2022-04-24T03:14:26.751221Z"
    },
    "papermill": {
     "duration": 1.16954,
     "end_time": "2022-04-24T03:14:26.755720",
     "exception": false,
     "start_time": "2022-04-24T03:14:25.586180",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       " casual  member \n",
       " 905954 2973868 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#get table info\n",
    "table(all_data$member_casual)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "d12e6f5c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:26.789753Z",
     "iopub.status.busy": "2022-04-24T03:14:26.787907Z",
     "iopub.status.idle": "2022-04-24T03:14:38.935500Z",
     "shell.execute_reply": "2022-04-24T03:14:38.933208Z"
    },
    "papermill": {
     "duration": 12.167972,
     "end_time": "2022-04-24T03:14:38.938719",
     "exception": false,
     "start_time": "2022-04-24T03:14:26.770747",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#clean time formatting for started_at\n",
    "all_data<-mutate(all_data,started_at=as.POSIXlt(started_at))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "c59285f5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:38.973296Z",
     "iopub.status.busy": "2022-04-24T03:14:38.971498Z",
     "iopub.status.idle": "2022-04-24T03:14:51.469595Z",
     "shell.execute_reply": "2022-04-24T03:14:51.467336Z"
    },
    "papermill": {
     "duration": 12.520077,
     "end_time": "2022-04-24T03:14:51.474079",
     "exception": false,
     "start_time": "2022-04-24T03:14:38.954002",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#clean time formatting for ended_at\n",
    "all_data<-mutate(all_data,ended_at=as.POSIXlt(ended_at))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "f239dbd9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:51.510071Z",
     "iopub.status.busy": "2022-04-24T03:14:51.508208Z",
     "iopub.status.idle": "2022-04-24T03:14:51.535602Z",
     "shell.execute_reply": "2022-04-24T03:14:51.533297Z"
    },
    "papermill": {
     "duration": 0.048168,
     "end_time": "2022-04-24T03:14:51.538310",
     "exception": false,
     "start_time": "2022-04-24T03:14:51.490142",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 8</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>member_casual</th><th scope=col>start_station_id</th><th scope=col>end_station_id</th><th scope=col>start_station_name</th><th scope=col>end_station_name</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>EACB19130B0CDA4A</td><td>2020-01-21 20:06:59</td><td>2020-01-21 20:14:30</td><td>member</td><td>239</td><td>326</td><td>Western Ave &amp; Leland Ave</td><td><span style=white-space:pre-wrap>Clark St &amp; Leland Ave         </span></td></tr>\n",
       "\t<tr><th scope=row>2</th><td>8FED874C809DC021</td><td>2020-01-30 14:22:39</td><td>2020-01-30 14:26:22</td><td>member</td><td>234</td><td>318</td><td>Clark St &amp; Montrose Ave </td><td>Southport Ave &amp; Irving Park Rd</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 8\n",
       "\\begin{tabular}{r|llllllll}\n",
       "  & ride\\_id & started\\_at & ended\\_at & member\\_casual & start\\_station\\_id & end\\_station\\_id & start\\_station\\_name & end\\_station\\_name\\\\\n",
       "  & <chr> & <dttm> & <dttm> & <chr> & <int> & <int> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & EACB19130B0CDA4A & 2020-01-21 20:06:59 & 2020-01-21 20:14:30 & member & 239 & 326 & Western Ave \\& Leland Ave & Clark St \\& Leland Ave         \\\\\n",
       "\t2 & 8FED874C809DC021 & 2020-01-30 14:22:39 & 2020-01-30 14:26:22 & member & 234 & 318 & Clark St \\& Montrose Ave  & Southport Ave \\& Irving Park Rd\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 8\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | member_casual &lt;chr&gt; | start_station_id &lt;int&gt; | end_station_id &lt;int&gt; | start_station_name &lt;chr&gt; | end_station_name &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | EACB19130B0CDA4A | 2020-01-21 20:06:59 | 2020-01-21 20:14:30 | member | 239 | 326 | Western Ave &amp; Leland Ave | Clark St &amp; Leland Ave          |\n",
       "| 2 | 8FED874C809DC021 | 2020-01-30 14:22:39 | 2020-01-30 14:26:22 | member | 234 | 318 | Clark St &amp; Montrose Ave  | Southport Ave &amp; Irving Park Rd |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          started_at          ended_at            member_casual\n",
       "1 EACB19130B0CDA4A 2020-01-21 20:06:59 2020-01-21 20:14:30 member       \n",
       "2 8FED874C809DC021 2020-01-30 14:22:39 2020-01-30 14:26:22 member       \n",
       "  start_station_id end_station_id start_station_name      \n",
       "1 239              326            Western Ave & Leland Ave\n",
       "2 234              318            Clark St & Montrose Ave \n",
       "  end_station_name              \n",
       "1 Clark St & Leland Ave         \n",
       "2 Southport Ave & Irving Park Rd"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#check the dataframe all_data\n",
    "head(all_data,2)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7b3120d5",
   "metadata": {
    "papermill": {
     "duration": 0.015352,
     "end_time": "2022-04-24T03:14:51.569428",
     "exception": false,
     "start_time": "2022-04-24T03:14:51.554076",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Data Processing"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "24cfdd82",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:14:51.603609Z",
     "iopub.status.busy": "2022-04-24T03:14:51.602081Z",
     "iopub.status.idle": "2022-04-24T03:15:02.262708Z",
     "shell.execute_reply": "2022-04-24T03:15:02.260039Z"
    },
    "papermill": {
     "duration": 10.681395,
     "end_time": "2022-04-24T03:15:02.266300",
     "exception": false,
     "start_time": "2022-04-24T03:14:51.584905",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 14</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>member_casual</th><th scope=col>start_station_id</th><th scope=col>end_station_id</th><th scope=col>start_station_name</th><th scope=col>end_station_name</th><th scope=col>day</th><th scope=col>day_of_week</th><th scope=col>month</th><th scope=col>monthName</th><th scope=col>hour</th><th scope=col>year</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>EACB19130B0CDA4A</td><td>2020-01-21 20:06:59</td><td>2020-01-21 20:14:30</td><td>member</td><td>239</td><td>326</td><td>Western Ave &amp; Leland Ave</td><td><span style=white-space:pre-wrap>Clark St &amp; Leland Ave         </span></td><td>21</td><td>Tuesday </td><td>01</td><td>Jan</td><td>20</td><td>2020</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>8FED874C809DC021</td><td>2020-01-30 14:22:39</td><td>2020-01-30 14:26:22</td><td>member</td><td>234</td><td>318</td><td>Clark St &amp; Montrose Ave </td><td>Southport Ave &amp; Irving Park Rd</td><td>30</td><td>Thursday</td><td>01</td><td>Jan</td><td>14</td><td>2020</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 14\n",
       "\\begin{tabular}{r|llllllllllllll}\n",
       "  & ride\\_id & started\\_at & ended\\_at & member\\_casual & start\\_station\\_id & end\\_station\\_id & start\\_station\\_name & end\\_station\\_name & day & day\\_of\\_week & month & monthName & hour & year\\\\\n",
       "  & <chr> & <dttm> & <dttm> & <chr> & <int> & <int> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & EACB19130B0CDA4A & 2020-01-21 20:06:59 & 2020-01-21 20:14:30 & member & 239 & 326 & Western Ave \\& Leland Ave & Clark St \\& Leland Ave          & 21 & Tuesday  & 01 & Jan & 20 & 2020\\\\\n",
       "\t2 & 8FED874C809DC021 & 2020-01-30 14:22:39 & 2020-01-30 14:26:22 & member & 234 & 318 & Clark St \\& Montrose Ave  & Southport Ave \\& Irving Park Rd & 30 & Thursday & 01 & Jan & 14 & 2020\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 14\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | member_casual &lt;chr&gt; | start_station_id &lt;int&gt; | end_station_id &lt;int&gt; | start_station_name &lt;chr&gt; | end_station_name &lt;chr&gt; | day &lt;chr&gt; | day_of_week &lt;chr&gt; | month &lt;chr&gt; | monthName &lt;chr&gt; | hour &lt;chr&gt; | year &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | EACB19130B0CDA4A | 2020-01-21 20:06:59 | 2020-01-21 20:14:30 | member | 239 | 326 | Western Ave &amp; Leland Ave | Clark St &amp; Leland Ave          | 21 | Tuesday  | 01 | Jan | 20 | 2020 |\n",
       "| 2 | 8FED874C809DC021 | 2020-01-30 14:22:39 | 2020-01-30 14:26:22 | member | 234 | 318 | Clark St &amp; Montrose Ave  | Southport Ave &amp; Irving Park Rd | 30 | Thursday | 01 | Jan | 14 | 2020 |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          started_at          ended_at            member_casual\n",
       "1 EACB19130B0CDA4A 2020-01-21 20:06:59 2020-01-21 20:14:30 member       \n",
       "2 8FED874C809DC021 2020-01-30 14:22:39 2020-01-30 14:26:22 member       \n",
       "  start_station_id end_station_id start_station_name      \n",
       "1 239              326            Western Ave & Leland Ave\n",
       "2 234              318            Clark St & Montrose Ave \n",
       "  end_station_name               day day_of_week month monthName hour year\n",
       "1 Clark St & Leland Ave          21  Tuesday     01    Jan       20   2020\n",
       "2 Southport Ave & Irving Park Rd 30  Thursday    01    Jan       14   2020"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#seperate date for analysis\n",
    "all_data$day <- format(all_data$started_at, \"%d\")\n",
    "all_data$day_of_week <- format(all_data$started_at,\"%A\")\n",
    "all_data$month <- format(all_data$started_at, \"%m\")\n",
    "all_data$monthName <- format(all_data$started_at,\"%b\")\n",
    "all_data$hour <- format(all_data$started_at,\"%H\")\n",
    "all_data$year <- format(all_data$started_at,\"%Y\")\n",
    "head(all_data,2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "40d9a5ae",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:15:02.302648Z",
     "iopub.status.busy": "2022-04-24T03:15:02.300747Z",
     "iopub.status.idle": "2022-04-24T03:15:07.287292Z",
     "shell.execute_reply": "2022-04-24T03:15:07.285008Z"
    },
    "papermill": {
     "duration": 5.00891,
     "end_time": "2022-04-24T03:15:07.291276",
     "exception": false,
     "start_time": "2022-04-24T03:15:02.282366",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#create ride length for analysis\n",
    "all_data$ride_length <- round(difftime(all_data$ended_at,all_data$started_at,units=\"mins\"),0)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "ee2d6792",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:15:07.330402Z",
     "iopub.status.busy": "2022-04-24T03:15:07.328309Z",
     "iopub.status.idle": "2022-04-24T03:15:07.362709Z",
     "shell.execute_reply": "2022-04-24T03:15:07.359975Z"
    },
    "papermill": {
     "duration": 0.057069,
     "end_time": "2022-04-24T03:15:07.365975",
     "exception": false,
     "start_time": "2022-04-24T03:15:07.308906",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 15</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>member_casual</th><th scope=col>start_station_id</th><th scope=col>end_station_id</th><th scope=col>start_station_name</th><th scope=col>end_station_name</th><th scope=col>day</th><th scope=col>day_of_week</th><th scope=col>month</th><th scope=col>monthName</th><th scope=col>hour</th><th scope=col>year</th><th scope=col>ride_length</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;drtn&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>EACB19130B0CDA4A</td><td>2020-01-21 20:06:59</td><td>2020-01-21 20:14:30</td><td>member</td><td>239</td><td>326</td><td>Western Ave &amp; Leland Ave</td><td><span style=white-space:pre-wrap>Clark St &amp; Leland Ave         </span></td><td>21</td><td>Tuesday </td><td>01</td><td>Jan</td><td>20</td><td>2020</td><td>8 mins</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>8FED874C809DC021</td><td>2020-01-30 14:22:39</td><td>2020-01-30 14:26:22</td><td>member</td><td>234</td><td>318</td><td>Clark St &amp; Montrose Ave </td><td>Southport Ave &amp; Irving Park Rd</td><td>30</td><td>Thursday</td><td>01</td><td>Jan</td><td>14</td><td>2020</td><td>4 mins</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 15\n",
       "\\begin{tabular}{r|lllllllllllllll}\n",
       "  & ride\\_id & started\\_at & ended\\_at & member\\_casual & start\\_station\\_id & end\\_station\\_id & start\\_station\\_name & end\\_station\\_name & day & day\\_of\\_week & month & monthName & hour & year & ride\\_length\\\\\n",
       "  & <chr> & <dttm> & <dttm> & <chr> & <int> & <int> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <drtn>\\\\\n",
       "\\hline\n",
       "\t1 & EACB19130B0CDA4A & 2020-01-21 20:06:59 & 2020-01-21 20:14:30 & member & 239 & 326 & Western Ave \\& Leland Ave & Clark St \\& Leland Ave          & 21 & Tuesday  & 01 & Jan & 20 & 2020 & 8 mins\\\\\n",
       "\t2 & 8FED874C809DC021 & 2020-01-30 14:22:39 & 2020-01-30 14:26:22 & member & 234 & 318 & Clark St \\& Montrose Ave  & Southport Ave \\& Irving Park Rd & 30 & Thursday & 01 & Jan & 14 & 2020 & 4 mins\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 15\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | member_casual &lt;chr&gt; | start_station_id &lt;int&gt; | end_station_id &lt;int&gt; | start_station_name &lt;chr&gt; | end_station_name &lt;chr&gt; | day &lt;chr&gt; | day_of_week &lt;chr&gt; | month &lt;chr&gt; | monthName &lt;chr&gt; | hour &lt;chr&gt; | year &lt;chr&gt; | ride_length &lt;drtn&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | EACB19130B0CDA4A | 2020-01-21 20:06:59 | 2020-01-21 20:14:30 | member | 239 | 326 | Western Ave &amp; Leland Ave | Clark St &amp; Leland Ave          | 21 | Tuesday  | 01 | Jan | 20 | 2020 | 8 mins |\n",
       "| 2 | 8FED874C809DC021 | 2020-01-30 14:22:39 | 2020-01-30 14:26:22 | member | 234 | 318 | Clark St &amp; Montrose Ave  | Southport Ave &amp; Irving Park Rd | 30 | Thursday | 01 | Jan | 14 | 2020 | 4 mins |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          started_at          ended_at            member_casual\n",
       "1 EACB19130B0CDA4A 2020-01-21 20:06:59 2020-01-21 20:14:30 member       \n",
       "2 8FED874C809DC021 2020-01-30 14:22:39 2020-01-30 14:26:22 member       \n",
       "  start_station_id end_station_id start_station_name      \n",
       "1 239              326            Western Ave & Leland Ave\n",
       "2 234              318            Clark St & Montrose Ave \n",
       "  end_station_name               day day_of_week month monthName hour year\n",
       "1 Clark St & Leland Ave          21  Tuesday     01    Jan       20   2020\n",
       "2 Southport Ave & Irving Park Rd 30  Thursday    01    Jan       14   2020\n",
       "  ride_length\n",
       "1 8 mins     \n",
       "2 4 mins     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#check the dataframe for ride_length\n",
    "head(all_data,2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "1e34a558",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:15:07.404738Z",
     "iopub.status.busy": "2022-04-24T03:15:07.402776Z",
     "iopub.status.idle": "2022-04-24T03:15:11.480717Z",
     "shell.execute_reply": "2022-04-24T03:15:11.478435Z"
    },
    "papermill": {
     "duration": 4.10017,
     "end_time": "2022-04-24T03:15:11.483478",
     "exception": false,
     "start_time": "2022-04-24T03:15:07.383308",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#clean ride_length to remove negative values or repairs/quality check-ups\n",
    "all_data_v1 <- all_data[!(all_data$start_station_name == \"HQ QR\" | all_data$ride_length<0),]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "81fa2fe5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:15:11.521824Z",
     "iopub.status.busy": "2022-04-24T03:15:11.519970Z",
     "iopub.status.idle": "2022-04-24T03:15:16.178140Z",
     "shell.execute_reply": "2022-04-24T03:15:16.176013Z"
    },
    "papermill": {
     "duration": 4.67979,
     "end_time": "2022-04-24T03:15:16.180923",
     "exception": false,
     "start_time": "2022-04-24T03:15:11.501133",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#convert the ride length to numeric\n",
    "all_data_v1$ride_length <- as.numeric(as.character(all_data_v1$ride_length))\n",
    "is.numeric(all_data_v1$ride_length)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "45adb498",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:15:16.218560Z",
     "iopub.status.busy": "2022-04-24T03:15:16.216739Z",
     "iopub.status.idle": "2022-04-24T03:16:32.879272Z",
     "shell.execute_reply": "2022-04-24T03:16:32.877097Z"
    },
    "papermill": {
     "duration": 76.684829,
     "end_time": "2022-04-24T03:16:32.882747",
     "exception": false,
     "start_time": "2022-04-24T03:15:16.197918",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#create a file that can be used in Tableau\n",
    "write.csv(all_data_v1,'Divvy_Clean_Data.csv')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "aa694ce4",
   "metadata": {
    "papermill": {
     "duration": 0.016594,
     "end_time": "2022-04-24T03:16:32.918914",
     "exception": false,
     "start_time": "2022-04-24T03:16:32.902320",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Data Analysis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "16ba58ad",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:16:32.957627Z",
     "iopub.status.busy": "2022-04-24T03:16:32.955847Z",
     "iopub.status.idle": "2022-04-24T03:16:33.227008Z",
     "shell.execute_reply": "2022-04-24T03:16:33.225080Z"
    },
    "papermill": {
     "duration": 0.293357,
     "end_time": "2022-04-24T03:16:33.229534",
     "exception": false,
     "start_time": "2022-04-24T03:16:32.936177",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>number_of_rides</th><th scope=col>max_ride</th><th scope=col>min_ride</th><th scope=col>average_ride</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td> 902182</td><td>156450</td><td>0</td><td>59.21258</td></tr>\n",
       "\t<tr><td>member</td><td>2973860</td><td>150944</td><td>0</td><td>14.16758</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 5\n",
       "\\begin{tabular}{lllll}\n",
       " member\\_casual & number\\_of\\_rides & max\\_ride & min\\_ride & average\\_ride\\\\\n",
       " <chr> & <int> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual &  902182 & 156450 & 0 & 59.21258\\\\\n",
       "\t member & 2973860 & 150944 & 0 & 14.16758\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 5\n",
       "\n",
       "| member_casual &lt;chr&gt; | number_of_rides &lt;int&gt; | max_ride &lt;dbl&gt; | min_ride &lt;dbl&gt; | average_ride &lt;dbl&gt; |\n",
       "|---|---|---|---|---|\n",
       "| casual |  902182 | 156450 | 0 | 59.21258 |\n",
       "| member | 2973860 | 150944 | 0 | 14.16758 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual number_of_rides max_ride min_ride average_ride\n",
       "1 casual         902182         156450   0        59.21258    \n",
       "2 member        2973860         150944   0        14.16758    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#analyze casual and member memberships\n",
    "all_data_v1%>% \n",
    "group_by(member_casual)%>%\n",
    "summarise(number_of_rides=n(),\n",
    "         max_ride=max(ride_length),\n",
    "         min_ride=min(ride_length),\n",
    "         average_ride=mean(ride_length))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "82406f08",
   "metadata": {
    "papermill": {
     "duration": 0.016672,
     "end_time": "2022-04-24T03:16:33.263488",
     "exception": false,
     "start_time": "2022-04-24T03:16:33.246816",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "There are more member riders than casual riders, however the duration of the average ride is longer for casual members. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "efadce8d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:16:33.300796Z",
     "iopub.status.busy": "2022-04-24T03:16:33.299010Z",
     "iopub.status.idle": "2022-04-24T03:16:37.760745Z",
     "shell.execute_reply": "2022-04-24T03:16:37.758521Z"
    },
    "papermill": {
     "duration": 4.483421,
     "end_time": "2022-04-24T03:16:37.763572",
     "exception": false,
     "start_time": "2022-04-24T03:16:33.280151",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 24 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>month</th><th scope=col>number_of_rides</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Jan</td><td>  7785</td><td>161.64303</td></tr>\n",
       "\t<tr><td>casual</td><td>Feb</td><td> 12314</td><td>133.28683</td></tr>\n",
       "\t<tr><td>casual</td><td>Mar</td><td> 24615</td><td> 70.83648</td></tr>\n",
       "\t<tr><td>casual</td><td>Apr</td><td> 47744</td><td> 50.94540</td></tr>\n",
       "\t<tr><td>casual</td><td>May</td><td> 81624</td><td> 51.23843</td></tr>\n",
       "\t<tr><td>casual</td><td>Jun</td><td>130218</td><td> 45.91917</td></tr>\n",
       "\t<tr><td>casual</td><td>Jul</td><td>175632</td><td> 59.78460</td></tr>\n",
       "\t<tr><td>casual</td><td>Aug</td><td>186889</td><td> 67.00744</td></tr>\n",
       "\t<tr><td>casual</td><td>Sep</td><td>129173</td><td> 51.66702</td></tr>\n",
       "\t<tr><td>casual</td><td>Oct</td><td> 71035</td><td> 58.99202</td></tr>\n",
       "\t<tr><td>casual</td><td>Nov</td><td> 18723</td><td> 67.03231</td></tr>\n",
       "\t<tr><td>casual</td><td>Dec</td><td> 16430</td><td> 63.32940</td></tr>\n",
       "\t<tr><td>member</td><td>Jan</td><td>136099</td><td> 11.14846</td></tr>\n",
       "\t<tr><td>member</td><td>Feb</td><td>126714</td><td> 12.80509</td></tr>\n",
       "\t<tr><td>member</td><td>Mar</td><td>115593</td><td> 14.33404</td></tr>\n",
       "\t<tr><td>member</td><td>Apr</td><td>217566</td><td> 13.51242</td></tr>\n",
       "\t<tr><td>member</td><td>May</td><td>285834</td><td> 13.85011</td></tr>\n",
       "\t<tr><td>member</td><td>Jun</td><td>345177</td><td> 14.54751</td></tr>\n",
       "\t<tr><td>member</td><td>Jul</td><td>381683</td><td> 16.43347</td></tr>\n",
       "\t<tr><td>member</td><td>Aug</td><td>403295</td><td> 16.18560</td></tr>\n",
       "\t<tr><td>member</td><td>Sep</td><td>364046</td><td> 14.13002</td></tr>\n",
       "\t<tr><td>member</td><td>Oct</td><td>300751</td><td> 13.03080</td></tr>\n",
       "\t<tr><td>member</td><td>Nov</td><td>158440</td><td> 12.43196</td></tr>\n",
       "\t<tr><td>member</td><td>Dec</td><td>138662</td><td> 11.41470</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 24 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & month & number\\_of\\_rides & average\\_duration\\\\\n",
       " <chr> & <ord> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Jan &   7785 & 161.64303\\\\\n",
       "\t casual & Feb &  12314 & 133.28683\\\\\n",
       "\t casual & Mar &  24615 &  70.83648\\\\\n",
       "\t casual & Apr &  47744 &  50.94540\\\\\n",
       "\t casual & May &  81624 &  51.23843\\\\\n",
       "\t casual & Jun & 130218 &  45.91917\\\\\n",
       "\t casual & Jul & 175632 &  59.78460\\\\\n",
       "\t casual & Aug & 186889 &  67.00744\\\\\n",
       "\t casual & Sep & 129173 &  51.66702\\\\\n",
       "\t casual & Oct &  71035 &  58.99202\\\\\n",
       "\t casual & Nov &  18723 &  67.03231\\\\\n",
       "\t casual & Dec &  16430 &  63.32940\\\\\n",
       "\t member & Jan & 136099 &  11.14846\\\\\n",
       "\t member & Feb & 126714 &  12.80509\\\\\n",
       "\t member & Mar & 115593 &  14.33404\\\\\n",
       "\t member & Apr & 217566 &  13.51242\\\\\n",
       "\t member & May & 285834 &  13.85011\\\\\n",
       "\t member & Jun & 345177 &  14.54751\\\\\n",
       "\t member & Jul & 381683 &  16.43347\\\\\n",
       "\t member & Aug & 403295 &  16.18560\\\\\n",
       "\t member & Sep & 364046 &  14.13002\\\\\n",
       "\t member & Oct & 300751 &  13.03080\\\\\n",
       "\t member & Nov & 158440 &  12.43196\\\\\n",
       "\t member & Dec & 138662 &  11.41470\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 24 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | month &lt;ord&gt; | number_of_rides &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Jan |   7785 | 161.64303 |\n",
       "| casual | Feb |  12314 | 133.28683 |\n",
       "| casual | Mar |  24615 |  70.83648 |\n",
       "| casual | Apr |  47744 |  50.94540 |\n",
       "| casual | May |  81624 |  51.23843 |\n",
       "| casual | Jun | 130218 |  45.91917 |\n",
       "| casual | Jul | 175632 |  59.78460 |\n",
       "| casual | Aug | 186889 |  67.00744 |\n",
       "| casual | Sep | 129173 |  51.66702 |\n",
       "| casual | Oct |  71035 |  58.99202 |\n",
       "| casual | Nov |  18723 |  67.03231 |\n",
       "| casual | Dec |  16430 |  63.32940 |\n",
       "| member | Jan | 136099 |  11.14846 |\n",
       "| member | Feb | 126714 |  12.80509 |\n",
       "| member | Mar | 115593 |  14.33404 |\n",
       "| member | Apr | 217566 |  13.51242 |\n",
       "| member | May | 285834 |  13.85011 |\n",
       "| member | Jun | 345177 |  14.54751 |\n",
       "| member | Jul | 381683 |  16.43347 |\n",
       "| member | Aug | 403295 |  16.18560 |\n",
       "| member | Sep | 364046 |  14.13002 |\n",
       "| member | Oct | 300751 |  13.03080 |\n",
       "| member | Nov | 158440 |  12.43196 |\n",
       "| member | Dec | 138662 |  11.41470 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual month number_of_rides average_duration\n",
       "1  casual        Jan     7785          161.64303       \n",
       "2  casual        Feb    12314          133.28683       \n",
       "3  casual        Mar    24615           70.83648       \n",
       "4  casual        Apr    47744           50.94540       \n",
       "5  casual        May    81624           51.23843       \n",
       "6  casual        Jun   130218           45.91917       \n",
       "7  casual        Jul   175632           59.78460       \n",
       "8  casual        Aug   186889           67.00744       \n",
       "9  casual        Sep   129173           51.66702       \n",
       "10 casual        Oct    71035           58.99202       \n",
       "11 casual        Nov    18723           67.03231       \n",
       "12 casual        Dec    16430           63.32940       \n",
       "13 member        Jan   136099           11.14846       \n",
       "14 member        Feb   126714           12.80509       \n",
       "15 member        Mar   115593           14.33404       \n",
       "16 member        Apr   217566           13.51242       \n",
       "17 member        May   285834           13.85011       \n",
       "18 member        Jun   345177           14.54751       \n",
       "19 member        Jul   381683           16.43347       \n",
       "20 member        Aug   403295           16.18560       \n",
       "21 member        Sep   364046           14.13002       \n",
       "22 member        Oct   300751           13.03080       \n",
       "23 member        Nov   158440           12.43196       \n",
       "24 member        Dec   138662           11.41470       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#arrange by month\n",
    "all_data_v1 %>% \n",
    "    mutate(month = month(started_at, label = TRUE)) %>% \n",
    "    group_by(member_casual, month) %>% \n",
    "    summarise(number_of_rides = n()\n",
    "              ,average_duration = mean(ride_length),.groups=\"keep\") %>% \n",
    "    arrange(member_casual, month)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "1f0af75f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:16:38.725817Z",
     "iopub.status.busy": "2022-04-24T03:16:38.723291Z",
     "iopub.status.idle": "2022-04-24T03:16:45.396293Z",
     "shell.execute_reply": "2022-04-24T03:16:45.389813Z"
    },
    "papermill": {
     "duration": 7.625309,
     "end_time": "2022-04-24T03:16:45.406793",
     "exception": false,
     "start_time": "2022-04-24T03:16:37.781484",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nFBB/2ulBbJYUnclH9Ww75//tVbhV37LbP/hlob33pDv3Wyo2RXPvXQnq5lFlFXkUl05yD/Qv\nE6nALVz+d/HnRr/VuZbjbpVH6lb1Pvv24v8TLT7/9yfnPu3zacv/jfzjWuGJn0+uHpi14y28\nXsOXnlrXc/jcsWuemNjSDZ9vVqTh09d3fLL0RHjHSgEF/93vSWsoemsbXqtuw0a13ug2asLy\n09M6V3BrLjxE3L4F8zgZCcfmfDAiqkP7lq3b9nhz+Lc7LjqWd2nd8tsLh8b3fa11q5adu/aa\nufz3gkylWONWfvZ/b/Xu1qZ95/4jJm0+dusd2/jjm94b0KNtqzZd+gxZuuWU6t/av0xUMXFl\ncXRy9pITX28v9EgPrxxzJ7eV1qlVix9vxCyYNLJrj+mqB7NZohedS6zw6vOVXquXmXp0+ZVU\nx3JL/MYWLdqe+d/81zu0a9myTbd+Q1fuuODSPHleRSe+6N++y5zsxyScntOiZeSlDJuK2e5B\nyWzevPmKmLTsBV1at5xxOVm4e5LfP5vr5DaR7hPGlh49f9LoHp3bdn69/5JtZ9/r2Hbu1RQV\nI6XaFMvNazmXlI7oN3J4L8clDO65NbjPtFeFNfXY7D0xdQeMyG51DgFVXhr+dOiRpZ84stnS\noxdNHftG1w5tO7w2asqC8+k2IcTcru3nXEm+8PPQdq9OUjGSEMI/rO3gRsVWjZ0cb7vH5R1s\nlktfThvTtVP7Vu06DHh30vazSUKI/w2O6tzv++zHpF5b2bx5820JGeoGy2b0rz6gQZHodUsd\nd3Pbkt9zvQF5Q7G705dDx+2MK/XWexOnTZrQorb96ymDr2XYHV/68d1JZVr2nzX30zdbVd24\n5MNl11PvP1Qe2DNvHL2dY3u1eMTA1Yc0rXu+PXniiBeriBnDe//vctZ3nzj+2xrNuk+cOLJZ\ndf2yTwYvPhavciatqUfdkJ2LjmTdVTIX7LnxeNfbDve5z0rbMXOcd3irD6f0UzmVENd//yJT\n0Xd/vIhvqdeKGHW/fHksxxczh3++s2mPwZPeH9msmm7x5LdWn0tyYZ68rqLSbV+yxK/fl5zp\neMy+ebsCK3QvYXTn4TgFMMk9zX0n0j0p84aM2HIlsNfQ94e90ergF0OPpGaqG6l7i0di9s56\nffDYr1b+9PeJCxmK0JnLP/roo479cLlvDXKd9vmXcvk7m6J0Cr/HZ8xXiqxjTTu1OylDKNaZ\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#plot the previous findings\n",
    "all_data_v1 %>% \n",
    "    mutate(month = month(started_at, label = TRUE)) %>% \n",
    "    group_by(member_casual,month ) %>% \n",
    "    summarise(average_duration = mean(ride_length),.groups=\"keep\") %>% \n",
    "    arrange(member_casual, month)  %>% \n",
    "    ggplot(aes(x = month, y = average_duration, fill = member_casual)) +\n",
    "    geom_col(position = \"dodge\")+labs(title=\"Average Ride Length by Month for Different User Types\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5e457a07",
   "metadata": {
    "papermill": {
     "duration": 0.023645,
     "end_time": "2022-04-24T03:16:45.456747",
     "exception": false,
     "start_time": "2022-04-24T03:16:45.433102",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We can clearly see that member riders use a consistent average duration of ride time over the course of the year, with causal members showing an increase in average ride lengths during the winter months of January and February, with lower average ride times during the rest of the year. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "a1910597",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:16:45.502784Z",
     "iopub.status.busy": "2022-04-24T03:16:45.499763Z",
     "iopub.status.idle": "2022-04-24T03:16:51.291761Z",
     "shell.execute_reply": "2022-04-24T03:16:51.289634Z"
    },
    "papermill": {
     "duration": 5.819713,
     "end_time": "2022-04-24T03:16:51.294611",
     "exception": false,
     "start_time": "2022-04-24T03:16:45.474898",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nTTt6koszdvmhpsV8+ubCL3/89ZzLULp8ta79HurQsFReG/NuWjZvzead/8Qba9a9acAjA6vY\nTSJyauvEodN+zzjeoEUrukXY8l07AAAoeGrq0IYtPg++881FX5QynZ49YtAtTeXcnhkiMqFF\np5XhvRatfqVsUNp3H44bfd9N93WJKZv6Y/3OI1o9uWDtgsZJf2/tf9+jd9bs8sOoOtnMIct2\nKtuMhbWEhaGQgt3XU8cu2VtswLBHa5Zx/LZx6bzJI5LfeLdbnn5n9sjKSTOX/9V3xMhBYWlf\nLJw78fHUJQtHGERid8cGRXR5bOilLVoxxKzdEgAAgAIUve+J946kbope3DrUIiL1N57t3OfD\n/1K9pS2GSsOefHvAI52KB4lIzainRs3qvCsxNSJ+XbzH++DwPs1K2+XGhhtWlj5kj8h+Flm2\nU9kWVAhLV2gKI9h5Uv5ZsONsm6kzutQJE5FqNev9t63Xqnl/dJvWLNdtqamvLd8Xdd+MHrdF\niUjV6UqP/tOXHB/Qr6zj9N44Z+3mzZtnF9UBAEBg+nf1j7aw232pTkQcZYZ+++1Q3+tRox/+\ndvXK6X8cOHbsyO4fvvANDC73eN8mi+6pVLlNx9tbtmjRvmO3LnVz+DIwy3Z0JrfX2OWFx3Ws\nYuXKd1YpdnGA0jDU6o5NEBE1LfrjBS89+uDAe3v2eeTJlzfuj8k4oaqmHDv2T8YhKec3/+3y\ntG9f1vfW6mzZMNiyY9NJEdkdlxLW0OlJjjt5OlYt+IUCAAAa8qZ4FUMWF1B5Uv7pXK1cr+eX\nnjdGtOrcd/ZHS3zDDabI97f9+/s3i7o2Kbfvm/faNyjXccL6LFt2edVs2tGZwjhjZwltNWtW\nq/S37oT975xIqDiwhoi8/+Sodcl1hg0dXb6Ysn/rF7MnPOiZt/j2MnbfmB7X0VGjp6365N30\naVMTfxOR2vZL37HWspvW/XZe+siuBLf6w+yec/a7VdXkKN7h/sce7FI/fbQpU6Zs3LjR99rp\ndK5cuVLbZVQURUSMRmNERA7ngQuHrx6LxRJQ9dhsNqvVWtS1iFysJ58CZN2mo57s6bUeTXZm\n0Xs9gdb52O12u92ubcvnzp3TtsHCV7ZzfdcLK7cnuBsHm0Uk6dT7KnpeawAAIABJREFUUQ3G\nLdp7rPHfY778y/Wfa01Js0FEkk5fCGSntrw27dPUWTMm1Gpx52Miexc0b/jEOHlpl++v0W6v\n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\nKlNcyJwjtwu+3llkvH12yuKCrCh2tqrYulRS+Pbl3x29cO7U5lmTtDqfTuVyCiEMPiUVJXX7\noVN3wm6H/LF/+pg1QoirN6MsTspp9HmhV5WAdSMn7zl8/PLFszuWjPr6THi9l+/9Y/3rrI+2\nHvj1wtmTOxaP3XA5od1glQ/Y8szTtqQhZuKMfbmq9TQ+uGspmxdUUtjXv8amvPjuA821Uq/6\nFnP00tP3/kaemjfuq59+PX/u1M4lH315Oa7p4NqOyXJPlhdOh8YFzq+arfWp1SzQQ5UkGa3M\nQmMo7Wk4NH/zhet3roQcnzt2oSYbr7TnIqmesOZkEMa7QNfXC3nOGL/o+OkL/xw/OH3qn0Kl\nzavOvdjoZqUPTRs8f/3OX/84efr0qSM/7Jz0/myfok265vPK/PfdcWt4gw8nVQ+4+WGfwcu3\nfHf8r1N/Hf/flpUz+n6wMPClHuPeKCSEyFGsb3U/5eOx8387de7fM8cXjVue4l7d+lG1ViMS\nb9+IjIxRK0x6+euNaBGk23bsjvWuZ57ODQt4LR457fDx0xdD/lo3bViIybdP+8JCCKEx9nox\n1/FZkyIN5bsUVPMa1xbTHevZbP+cPnnou82j+42N9Qse36m4yHj7nMniAp4WH8XaqkCjcYPv\nzN26bfGeyJQ8hUr2mTC5nKdeCOER2HpC9zvL1n72TYKuSMnKnUcv8J85YOPIAcEbNjgratNx\ns5KXzt+yeFqkyVCwWKWhU8dU8TYkRwmt3v/jnrVXb5j/ZVhKvqIlenw4v1mQ2pfs1+i6v5x7\n9L7r7UaVfuiRbF5Q59d9q3Mv1LesX/qJXvk7VvHeemrFUTHRXQgxflKn9QsWb7wel6tw8c7D\n5nQo4eCLYGVp4ZRw1wW1aKF8Nbtw605qBcloZRZCjJ3YZ/q8LaPe255iUco26FsnarVaL/qs\npHrCmjO3WQZhtH0/n+U1a87cSaOEf/GeYz44MbCfr16d/5yr95o2vtCG7Xv3zNp5JzFV45+7\nYJVX33r/rWbWA+sz+n0XjlzDdcYCI+cu+mnb5u8PbfthU5jGK6BgwcJtBkxqU7+StXRrtO4j\n5k1eOX/tshnjoi2eJSo3+qT/vQOCy7eokbxyXr/hr2xc8b5aedLRvDVpyA/dJ9//1Fnbf9Zn\nPguWLp8+PiZVW7Bk8NAZ/St43itMpbo2TOm9tlinUeru4UiK3Dty5F5x75snclWs1e79d9qm\nnQbx2J+XEIaMFhfwtDSKg49WAVyQ9QvWFn61vaCTLh3yVBLDvu7Yc+UnG7akHVvtaIqSEhWr\n+Odwy56Xs5FLpXoojDkldM++v2o2fiNArxFCJEXs6dBj0cxN24o/7tTRbPBsreEAVMQeO8CF\nKakmi3nvnG3eQZ2zrdUJITQao7/Tzr7NkEuleiiMVuf74xcrDod7Dm9RXZ98e/OsDTmKdnBW\nqwPwPKPY4fmkNRqfgXPQkqN/atd1ntbg32/uG87OgsxodD6TZgxbsHDj4N3zTFqf0sGvTB7Y\nwamJno01HIDq+CgWcGFKaui/F435i+XOxt11AIBnF8UOAABAElzuBAAAQBIUOwAAAElQ7AAA\nACRBsQPgQjaWDfTwb+DsFADwrKLYAXCmO8fGNmvW7JcHv3UUAJA1FDsAzpRw6+ju3btvmczO\nDgIAMqDYAciYkpKcquIVkZQkk0W90QAAD6PYAXjYxrKBvoXH/bZ0aEFfbw+jzi93sbc+/MIi\nxO+rR1YtksfDzbtouRoTNvyTfpbbxzZ3aVIrl5+30cu31IsNJq4+8NBoN39aWK2wv4dR5xVQ\noMbr3X4IjRdCfFLUr2jL/UKINoGeOYJGpM2SeOuXPs1fDsjh6RVQoMbrXfeFxmfTOweAZxwX\nKAbwsI1lA9++7Ks1R3YZ8n6NILddC6d+GxL1QodXTv+YMHRo1wDzpTlT5l01GQ5FRNXOYRRC\n3P19RolaIxPdSnTu1rKYT+LhnWt/CIlqMPbAvkl1raP1uFUpIPFQsfb9W79UJuzkns+W7DYE\nNIm5883VQ/sP/zis28QTYzfvejV36fp1S20sG9j1SsCLHlcNTfu2eqnU3T+++2zZN4ZcTWNv\n7+LfUAB4MgUAHrShTIAQYviP1613E8N3CyF0bvl/jkyyTrnwZT0hRPvTYYqiKIqlfW5Pg2fZ\nQzfjrY+aTXeHVQ3UaN0PRSenjVZjwoG08be3LyaE+D4ySVGUSzvqCSG2hiWkf+kaH//35G86\nFBdCHIxKdvCbBgAZ8D8wgMcweJaZXi+/9bZ7zjd9dNrACrNf9nOzTsn1Uh0hRKLJIoRIDNu2\n+U5C6d6r6uT1tD6q1QeO+bK7Ykkavzf03hSd5/bRddIGr9y+sBAi1vz44+00Oo+vRtVOu1uq\nWQEhRJyFg/MA4MkodgAeQ6sPSH9XrxFuufzT7mq0hrTbSZF7hBDFuhZN/3zvoK5CiJvf37o3\nu2eFfMb/tjYavSaTlzZ6Vyto1Nn4ZABAehQ7AHZ6zHG6Go1eCKHcP6NWozE8+pyMaDTuqsQC\ngOcQxQ6AXdz9GwshLq2/nH5iXOhaIUSe+nmcEgkAnlsUOwB28Qhs0zqXZ8iSnkfvJlmnKKkR\nU7ss12jdxjUNsnEQzs4HAFXonR0AwLNOu+jrj75/ecyrxYO79WxV1Dvx4LZVe/+JrDfmx/r3\nT7bIhMHHIIRYOm95ctnqnTvWcHxaAJAZe+wA2Ct3jVHnDq5tXdN728qZ42Ysu+Be5eNVP/04\nuZ5t805rWq3IoSlDh0/d6+icACA9LlAMAAAgCfbYAQAASIJiBwAAIAmKHQAAgCQodgAAAJKg\n2AEAAEiCYgcAACAJih0AAIAkKHYAAACSoNgBAABIgmIHAAAgCYodAACAJCh2AAAAkqDYAQAA\nSOL/yYtQMc+SUHEAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#plot by user type\n",
    "all_data_v1 %>% \n",
    "    mutate(month = month(started_at, label = TRUE)) %>% \n",
    "    group_by(member_casual,month ) %>% \n",
    "    summarise(number_of_rides = n(),.groups=\"keep\") %>% \n",
    "    arrange(member_casual, month)  %>% \n",
    "    ggplot(aes(x = month, y = number_of_rides, fill = member_casual)) +\n",
    "    geom_col(position = \"dodge\")+labs(title=\"Number of Rides by Month for Different User Types\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0c4605d8",
   "metadata": {
    "papermill": {
     "duration": 0.018352,
     "end_time": "2022-04-24T03:16:51.331838",
     "exception": false,
     "start_time": "2022-04-24T03:16:51.313486",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "This plot shows members using a greater number of rides, especially in the summer months. The number of casual rides is lower, but shows a similar increase during the summer months. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "a40e4615",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:16:51.373273Z",
     "iopub.status.busy": "2022-04-24T03:16:51.371289Z",
     "iopub.status.idle": "2022-04-24T03:16:57.395854Z",
     "shell.execute_reply": "2022-04-24T03:16:57.393846Z"
    },
    "papermill": {
     "duration": 6.047956,
     "end_time": "2022-04-24T03:16:57.398590",
     "exception": false,
     "start_time": "2022-04-24T03:16:51.350634",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 14 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>weekday</th><th scope=col>number_of_rides</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sun</td><td>181293</td><td>59.68931</td></tr>\n",
       "\t<tr><td>casual</td><td>Mon</td><td>103296</td><td>56.20560</td></tr>\n",
       "\t<tr><td>casual</td><td>Tue</td><td> 90510</td><td>59.93908</td></tr>\n",
       "\t<tr><td>casual</td><td>Wed</td><td> 92457</td><td>61.97855</td></tr>\n",
       "\t<tr><td>casual</td><td>Thu</td><td>102679</td><td>61.38338</td></tr>\n",
       "\t<tr><td>casual</td><td>Fri</td><td>122404</td><td>62.89662</td></tr>\n",
       "\t<tr><td>casual</td><td>Sat</td><td>209543</td><td>55.53244</td></tr>\n",
       "\t<tr><td>member</td><td>Sun</td><td>267965</td><td>15.33249</td></tr>\n",
       "\t<tr><td>member</td><td>Mon</td><td>472196</td><td>14.04237</td></tr>\n",
       "\t<tr><td>member</td><td>Tue</td><td>508445</td><td>13.76951</td></tr>\n",
       "\t<tr><td>member</td><td>Wed</td><td>500329</td><td>13.73308</td></tr>\n",
       "\t<tr><td>member</td><td>Thu</td><td>484177</td><td>13.73219</td></tr>\n",
       "\t<tr><td>member</td><td>Fri</td><td>452790</td><td>13.74172</td></tr>\n",
       "\t<tr><td>member</td><td>Sat</td><td>287958</td><td>16.14836</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 14 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & weekday & number\\_of\\_rides & average\\_duration\\\\\n",
       " <chr> & <ord> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sun & 181293 & 59.68931\\\\\n",
       "\t casual & Mon & 103296 & 56.20560\\\\\n",
       "\t casual & Tue &  90510 & 59.93908\\\\\n",
       "\t casual & Wed &  92457 & 61.97855\\\\\n",
       "\t casual & Thu & 102679 & 61.38338\\\\\n",
       "\t casual & Fri & 122404 & 62.89662\\\\\n",
       "\t casual & Sat & 209543 & 55.53244\\\\\n",
       "\t member & Sun & 267965 & 15.33249\\\\\n",
       "\t member & Mon & 472196 & 14.04237\\\\\n",
       "\t member & Tue & 508445 & 13.76951\\\\\n",
       "\t member & Wed & 500329 & 13.73308\\\\\n",
       "\t member & Thu & 484177 & 13.73219\\\\\n",
       "\t member & Fri & 452790 & 13.74172\\\\\n",
       "\t member & Sat & 287958 & 16.14836\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 14 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | weekday &lt;ord&gt; | number_of_rides &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Sun | 181293 | 59.68931 |\n",
       "| casual | Mon | 103296 | 56.20560 |\n",
       "| casual | Tue |  90510 | 59.93908 |\n",
       "| casual | Wed |  92457 | 61.97855 |\n",
       "| casual | Thu | 102679 | 61.38338 |\n",
       "| casual | Fri | 122404 | 62.89662 |\n",
       "| casual | Sat | 209543 | 55.53244 |\n",
       "| member | Sun | 267965 | 15.33249 |\n",
       "| member | Mon | 472196 | 14.04237 |\n",
       "| member | Tue | 508445 | 13.76951 |\n",
       "| member | Wed | 500329 | 13.73308 |\n",
       "| member | Thu | 484177 | 13.73219 |\n",
       "| member | Fri | 452790 | 13.74172 |\n",
       "| member | Sat | 287958 | 16.14836 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual weekday number_of_rides average_duration\n",
       "1  casual        Sun     181293          59.68931        \n",
       "2  casual        Mon     103296          56.20560        \n",
       "3  casual        Tue      90510          59.93908        \n",
       "4  casual        Wed      92457          61.97855        \n",
       "5  casual        Thu     102679          61.38338        \n",
       "6  casual        Fri     122404          62.89662        \n",
       "7  casual        Sat     209543          55.53244        \n",
       "8  member        Sun     267965          15.33249        \n",
       "9  member        Mon     472196          14.04237        \n",
       "10 member        Tue     508445          13.76951        \n",
       "11 member        Wed     500329          13.73308        \n",
       "12 member        Thu     484177          13.73219        \n",
       "13 member        Fri     452790          13.74172        \n",
       "14 member        Sat     287958          16.14836        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#arrange by day of the week\n",
    "all_data_v1 %>% \n",
    "    mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "    group_by(member_casual, weekday) %>% \n",
    "    summarise(number_of_rides = n()\n",
    "              ,average_duration = mean(ride_length),.groups=\"keep\") %>% \n",
    "    arrange(member_casual, weekday)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "fcc29c05",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:16:57.498528Z",
     "iopub.status.busy": "2022-04-24T03:16:57.496389Z",
     "iopub.status.idle": "2022-04-24T03:17:01.624171Z",
     "shell.execute_reply": "2022-04-24T03:17:01.622003Z"
    },
    "papermill": {
     "duration": 4.209568,
     "end_time": "2022-04-24T03:17:01.626858",
     "exception": false,
     "start_time": "2022-04-24T03:16:57.417290",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nkRNru4YUqZyvJQEAgDudzWiI6rXJ01V4xszIIFtIp9y9V+svT6iO2LnDB36w7veL8cmp288c\nO6p4V8nduAEAAJCPtO6x2znlrqfnLokJLFshPPnIkSOVatSqWaOS6eIpJfju+d+sLtASAQAA\noIXWPXbPz9kVUm3avq3jVUdsOd+gZnM/HF/SL/7cxmplO8QW9ynQEgEAgCepSYkOs9WkFMbe\nsuNMvqyaAo3uGVkhoHWP3eaYpDI9O4mIYvTtXdT2046LIuJdtOWH/cpM6/Z2ARYIAAA8YUnl\n0IDSL/72v5ElAny9LcbAouUeff5Dp8jvi8fWLhPmbfUtW6XhpM92p35L7NFNw3veW6pIoNUn\nuFLtVpMXrXTmoTcR+furV1pWL+1jsYZGVOr1zJsnkxxaxvV+xZCgyJmJl3999K4qvtbgWIea\n7cSe3vLJQ23rhfh52QKKNGr/yJe/nU95ac+387rcVSc0wMdk8Q6PrNF3zOzo5OsdOu0X5o17\nvEZkMS+z2T+kZOseT2+/kOB6aUxJf/+SY1KP4s/JdRVFOZLoyLbbvNC6xy7IpNiv2l2PG5bw\n+eKbk3J/GREp/UCJy+/MFBmT1ZsBAMBtKO7cJ82GXXpk+ISGJa3fzn/lk1f67j307q51cSNH\nvtDHcfitl+ZM6V2vTcfLzfwtInLt1PJalR86pkQ88tjA8qHGvzZ8OWlwx+Vb39/5Qb9c9CYi\n53e8WOeLrW269x11v99fG79aMnv02k37j/2x0NuQ/bicydF9a7W72Lz3y7Of9jZks3fwzM/T\nou6aqIbW7/PE2KLG6GXvvtOz6eqYvYf7l/U//v3Qal0W+FdsOeCpscGW5N1bln34+jPbTkXu\n+7ijiMzqUGv0ujN39xjUfUDJmGO/L3x7XpvNxy6dXG7Obndk1t3mhdZgNyDC7/X3Xz0++fOS\nVmPJzhEnZv5PpKmInFl3No8VAACAwik54dDodSdfb1VcRPo+UtU7pNPO5Qc2njnUNNAqIp0j\n/yr/8E9zTlxtViVERN64Z8AxpfzGYzsah3iJiMiry0fV7jrjsZcmdh1fLiCnvYnIlX0bRy3b\n+0bXCiIi6vT3n6z9+MJFj3733NLOpbMd19XjL12e/fuaYXWyn0g1qXfnl5yB9+w4+G0lH7OI\nPDe2W0SxVi88vLL/tp7rx35hsJb868+1payuw7lTipTwX7h6kUjH5Ph9z647VbLdV+s+e8DV\n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\nAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#plot by day of week \n",
    "all_data_v1 %>% \n",
    "    mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "    group_by(member_casual,weekday) %>% \n",
    "    summarise(average_duration = mean(ride_length),.groups=\"keep\") %>% \n",
    "    arrange(member_casual, weekday)  %>% \n",
    "    ggplot(aes(x = weekday, y = average_duration, fill = member_casual)) +\n",
    "    geom_col(position = \"dodge\")+labs(title=\"Average Ride Length by Weekday for Different User Types\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "58a51caf",
   "metadata": {
    "papermill": {
     "duration": 0.019801,
     "end_time": "2022-04-24T03:17:01.666034",
     "exception": false,
     "start_time": "2022-04-24T03:17:01.646233",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "There is a trend showing casual riders with a longer average duration throughout the week. \n",
    "Saturday is the highest average duration for members, while Friday is the longest average duration for casual riders. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "cd38f1e1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:17:01.710448Z",
     "iopub.status.busy": "2022-04-24T03:17:01.708047Z",
     "iopub.status.idle": "2022-04-24T03:17:05.848774Z",
     "shell.execute_reply": "2022-04-24T03:17:05.845091Z"
    },
    "papermill": {
     "duration": 4.166448,
     "end_time": "2022-04-24T03:17:05.852127",
     "exception": false,
     "start_time": "2022-04-24T03:17:01.685679",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\njE6ns1i41KMAFcHFy5CLAobsLwaDwS+/UTNDsIOHtx/KJlPWjj959+R5MxyKtd/UjXUCjLEn\nv33yxTn2si0/++p+LxupMXTMmyJxp7Y+NnTyK6VqPVN8h6qqLzz8QOp5ApwnRW2YkOgQEWdC\noogkJCR4/mS2WHQmq4hcdLrt1/Z/XHC49MEmvanMokWLrrVhbvnQyIOrtq/94K++b7XwTIqM\njGzcuHFyFwEBDofDy5p9QK/X63Q6VVWdTqe/a/ERv/zM9e+bXgSH7JfdV35ftT074H2JIfue\nwWBQFMXtdrtcLv9WAqTnbbDTGcJeWrjthbj/rupDg8w6EbGE3LP0+6a339k0SJ/N5vvy4V9+\nOWLueFdyrrKVbtw51LLihzOGx0yKPmDhF/NSz6zojHHnv+gxMCWlSffu3T0Ppi/6pnRAHZEN\nB+Kd5czJwe5QvDOoRXD6ThtEWH+KPp/ytF+/fv369fM8drvd0dHRXg7cB+x2u8VicTqdMTEx\n/q7FR6xWq+879e/iNZvNvu/Uv0P2y84M/w5Zp9OFhob6uFO/bzfCw8N93KPfhxwSEqLX6xMS\nEuLi4vxbCZBezvYiHNm8Ztq44f379pl/Ns6ZcCq4bJVsU52IOOLX/2/OtP8c7uTnqmtPnNNW\n3maLuEvccauiXZZk5s8nvTzr5zO2Er2WLVu2bNmyrxdO0RlCll1T2aK3BN9R2qT/YeO55Jav\n7tp6Jalhu5KXDs4aMHDImaRrXYh7/am44FrVcjQ6AACAm5r3wU59r1/zGu16vPLmO/M+/vT3\n2KQr/8y4o27J2wfPcmZ3DWpIjcciTYmjX/tw+18HDu/7Y+GM53fFm3v1qmwKbDSwfthnoyau\n+mX78aMHls4dvXzfhTbNS2TVlmIa8WCNw/PH/7T9wOmjf3300tu2Um37lLUXq/xQWNzZUePn\nbvvrwKE9u76cPnLD1cDBAwl2AACgCPH2WMmRBfcPmf9r2yHTpw7rVq9qGREJqTpl8uALY+YO\n7dKg7consrowVmcsPnHqC+/N/fztV39wGgPLV6wx7PWXmoeYRaTTS9MS//fuV3PeuOgwlq1c\nd/hrY+vbszldo8pDE59MnP7ltJcuJCiR9VpPfHWQTkQM4RNmvTJvzoIZE19M0AdWrho1ctr4\nBtk1BQAAoCWKqnp107d+Je3LQp+6sPc1EVEUZcjhi+9GBovIq3XD3zh719WzCwq2zHxVOM+x\n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\nkvg/YJtsxLq0/LAAAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#arrange and plot by different user type\n",
    "all_data_v1 %>% \n",
    "    mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "    group_by(member_casual,weekday) %>% \n",
    "    summarise(number_of_rides = n(),.groups=\"keep\") %>% \n",
    "    arrange(member_casual, weekday)  %>% \n",
    "    ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +\n",
    "    geom_col(position = \"dodge\")+labs(title=\"Average Ride Length by Number of Rides for Different User Types\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f51b4c25",
   "metadata": {
    "papermill": {
     "duration": 0.021003,
     "end_time": "2022-04-24T03:17:05.894066",
     "exception": false,
     "start_time": "2022-04-24T03:17:05.873063",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Members have a higher number of rides on weekdays, with a lower number of rides throughout the weekend. \n",
    "Casual riders tend to have a slightly higher number of rides during the weekend, with lower number of rides during the week. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "f919a9bc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:17:05.938547Z",
     "iopub.status.busy": "2022-04-24T03:17:05.936402Z",
     "iopub.status.idle": "2022-04-24T03:17:06.249087Z",
     "shell.execute_reply": "2022-04-24T03:17:06.246470Z"
    },
    "papermill": {
     "duration": 0.337963,
     "end_time": "2022-04-24T03:17:06.252061",
     "exception": false,
     "start_time": "2022-04-24T03:17:05.914098",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 48 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>hour</th><th scope=col>number_of_rides</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td> 0</td><td>  8363</td><td>104.26330</td></tr>\n",
       "\t<tr><td>casual</td><td> 1</td><td>  5495</td><td>103.82475</td></tr>\n",
       "\t<tr><td>casual</td><td> 2</td><td>  3361</td><td>103.88605</td></tr>\n",
       "\t<tr><td>casual</td><td> 3</td><td>  1982</td><td>170.22704</td></tr>\n",
       "\t<tr><td>casual</td><td> 4</td><td>  1196</td><td>126.54515</td></tr>\n",
       "\t<tr><td>casual</td><td> 5</td><td>  2690</td><td> 99.01561</td></tr>\n",
       "\t<tr><td>casual</td><td> 6</td><td>  6291</td><td> 66.40089</td></tr>\n",
       "\t<tr><td>casual</td><td> 7</td><td> 13302</td><td> 32.20192</td></tr>\n",
       "\t<tr><td>casual</td><td> 8</td><td> 22304</td><td> 54.82209</td></tr>\n",
       "\t<tr><td>casual</td><td> 9</td><td> 29057</td><td> 68.19341</td></tr>\n",
       "\t<tr><td>casual</td><td>10</td><td> 45374</td><td> 69.45656</td></tr>\n",
       "\t<tr><td>casual</td><td>11</td><td> 61323</td><td> 58.23836</td></tr>\n",
       "\t<tr><td>casual</td><td>12</td><td> 71626</td><td> 55.42015</td></tr>\n",
       "\t<tr><td>casual</td><td>13</td><td> 77406</td><td> 57.65706</td></tr>\n",
       "\t<tr><td>casual</td><td>14</td><td> 81143</td><td> 59.25938</td></tr>\n",
       "\t<tr><td>casual</td><td>15</td><td> 82461</td><td> 57.74901</td></tr>\n",
       "\t<tr><td>casual</td><td>16</td><td> 85398</td><td> 54.40742</td></tr>\n",
       "\t<tr><td>casual</td><td>17</td><td> 86809</td><td> 60.06746</td></tr>\n",
       "\t<tr><td>casual</td><td>18</td><td> 69297</td><td> 51.81875</td></tr>\n",
       "\t<tr><td>casual</td><td>19</td><td> 51181</td><td> 53.54501</td></tr>\n",
       "\t<tr><td>casual</td><td>20</td><td> 34930</td><td> 61.71045</td></tr>\n",
       "\t<tr><td>casual</td><td>21</td><td> 25433</td><td> 66.40039</td></tr>\n",
       "\t<tr><td>casual</td><td>22</td><td> 21421</td><td> 62.96401</td></tr>\n",
       "\t<tr><td>casual</td><td>23</td><td> 14339</td><td> 49.68533</td></tr>\n",
       "\t<tr><td>member</td><td> 0</td><td> 15749</td><td> 17.08667</td></tr>\n",
       "\t<tr><td>member</td><td> 1</td><td>  8967</td><td> 14.90354</td></tr>\n",
       "\t<tr><td>member</td><td> 2</td><td>  5230</td><td> 25.14379</td></tr>\n",
       "\t<tr><td>member</td><td> 3</td><td>  3546</td><td> 26.03666</td></tr>\n",
       "\t<tr><td>member</td><td> 4</td><td>  6686</td><td> 11.13506</td></tr>\n",
       "\t<tr><td>member</td><td> 5</td><td> 34443</td><td> 10.97898</td></tr>\n",
       "\t<tr><td>member</td><td> 6</td><td>104094</td><td> 12.00110</td></tr>\n",
       "\t<tr><td>member</td><td> 7</td><td>229602</td><td> 12.76303</td></tr>\n",
       "\t<tr><td>member</td><td> 8</td><td>288164</td><td> 12.97057</td></tr>\n",
       "\t<tr><td>member</td><td> 9</td><td>137069</td><td> 13.23236</td></tr>\n",
       "\t<tr><td>member</td><td>10</td><td>102288</td><td> 13.45818</td></tr>\n",
       "\t<tr><td>member</td><td>11</td><td>122331</td><td> 13.00414</td></tr>\n",
       "\t<tr><td>member</td><td>12</td><td>139549</td><td> 15.61391</td></tr>\n",
       "\t<tr><td>member</td><td>13</td><td>135236</td><td> 13.87369</td></tr>\n",
       "\t<tr><td>member</td><td>14</td><td>130495</td><td> 14.16961</td></tr>\n",
       "\t<tr><td>member</td><td>15</td><td>166568</td><td> 14.50938</td></tr>\n",
       "\t<tr><td>member</td><td>16</td><td>295834</td><td> 14.14918</td></tr>\n",
       "\t<tr><td>member</td><td>17</td><td>391277</td><td> 14.90031</td></tr>\n",
       "\t<tr><td>member</td><td>18</td><td>248234</td><td> 15.12883</td></tr>\n",
       "\t<tr><td>member</td><td>19</td><td>159256</td><td> 16.09076</td></tr>\n",
       "\t<tr><td>member</td><td>20</td><td>100127</td><td> 14.93610</td></tr>\n",
       "\t<tr><td>member</td><td>21</td><td> 71863</td><td> 15.19412</td></tr>\n",
       "\t<tr><td>member</td><td>22</td><td> 48800</td><td> 14.32344</td></tr>\n",
       "\t<tr><td>member</td><td>23</td><td> 28452</td><td> 14.52907</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 48 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & hour & number\\_of\\_rides & average\\_duration\\\\\n",
       " <chr> & <int> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual &  0 &   8363 & 104.26330\\\\\n",
       "\t casual &  1 &   5495 & 103.82475\\\\\n",
       "\t casual &  2 &   3361 & 103.88605\\\\\n",
       "\t casual &  3 &   1982 & 170.22704\\\\\n",
       "\t casual &  4 &   1196 & 126.54515\\\\\n",
       "\t casual &  5 &   2690 &  99.01561\\\\\n",
       "\t casual &  6 &   6291 &  66.40089\\\\\n",
       "\t casual &  7 &  13302 &  32.20192\\\\\n",
       "\t casual &  8 &  22304 &  54.82209\\\\\n",
       "\t casual &  9 &  29057 &  68.19341\\\\\n",
       "\t casual & 10 &  45374 &  69.45656\\\\\n",
       "\t casual & 11 &  61323 &  58.23836\\\\\n",
       "\t casual & 12 &  71626 &  55.42015\\\\\n",
       "\t casual & 13 &  77406 &  57.65706\\\\\n",
       "\t casual & 14 &  81143 &  59.25938\\\\\n",
       "\t casual & 15 &  82461 &  57.74901\\\\\n",
       "\t casual & 16 &  85398 &  54.40742\\\\\n",
       "\t casual & 17 &  86809 &  60.06746\\\\\n",
       "\t casual & 18 &  69297 &  51.81875\\\\\n",
       "\t casual & 19 &  51181 &  53.54501\\\\\n",
       "\t casual & 20 &  34930 &  61.71045\\\\\n",
       "\t casual & 21 &  25433 &  66.40039\\\\\n",
       "\t casual & 22 &  21421 &  62.96401\\\\\n",
       "\t casual & 23 &  14339 &  49.68533\\\\\n",
       "\t member &  0 &  15749 &  17.08667\\\\\n",
       "\t member &  1 &   8967 &  14.90354\\\\\n",
       "\t member &  2 &   5230 &  25.14379\\\\\n",
       "\t member &  3 &   3546 &  26.03666\\\\\n",
       "\t member &  4 &   6686 &  11.13506\\\\\n",
       "\t member &  5 &  34443 &  10.97898\\\\\n",
       "\t member &  6 & 104094 &  12.00110\\\\\n",
       "\t member &  7 & 229602 &  12.76303\\\\\n",
       "\t member &  8 & 288164 &  12.97057\\\\\n",
       "\t member &  9 & 137069 &  13.23236\\\\\n",
       "\t member & 10 & 102288 &  13.45818\\\\\n",
       "\t member & 11 & 122331 &  13.00414\\\\\n",
       "\t member & 12 & 139549 &  15.61391\\\\\n",
       "\t member & 13 & 135236 &  13.87369\\\\\n",
       "\t member & 14 & 130495 &  14.16961\\\\\n",
       "\t member & 15 & 166568 &  14.50938\\\\\n",
       "\t member & 16 & 295834 &  14.14918\\\\\n",
       "\t member & 17 & 391277 &  14.90031\\\\\n",
       "\t member & 18 & 248234 &  15.12883\\\\\n",
       "\t member & 19 & 159256 &  16.09076\\\\\n",
       "\t member & 20 & 100127 &  14.93610\\\\\n",
       "\t member & 21 &  71863 &  15.19412\\\\\n",
       "\t member & 22 &  48800 &  14.32344\\\\\n",
       "\t member & 23 &  28452 &  14.52907\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 48 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | hour &lt;int&gt; | number_of_rides &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual |  0 |   8363 | 104.26330 |\n",
       "| casual |  1 |   5495 | 103.82475 |\n",
       "| casual |  2 |   3361 | 103.88605 |\n",
       "| casual |  3 |   1982 | 170.22704 |\n",
       "| casual |  4 |   1196 | 126.54515 |\n",
       "| casual |  5 |   2690 |  99.01561 |\n",
       "| casual |  6 |   6291 |  66.40089 |\n",
       "| casual |  7 |  13302 |  32.20192 |\n",
       "| casual |  8 |  22304 |  54.82209 |\n",
       "| casual |  9 |  29057 |  68.19341 |\n",
       "| casual | 10 |  45374 |  69.45656 |\n",
       "| casual | 11 |  61323 |  58.23836 |\n",
       "| casual | 12 |  71626 |  55.42015 |\n",
       "| casual | 13 |  77406 |  57.65706 |\n",
       "| casual | 14 |  81143 |  59.25938 |\n",
       "| casual | 15 |  82461 |  57.74901 |\n",
       "| casual | 16 |  85398 |  54.40742 |\n",
       "| casual | 17 |  86809 |  60.06746 |\n",
       "| casual | 18 |  69297 |  51.81875 |\n",
       "| casual | 19 |  51181 |  53.54501 |\n",
       "| casual | 20 |  34930 |  61.71045 |\n",
       "| casual | 21 |  25433 |  66.40039 |\n",
       "| casual | 22 |  21421 |  62.96401 |\n",
       "| casual | 23 |  14339 |  49.68533 |\n",
       "| member |  0 |  15749 |  17.08667 |\n",
       "| member |  1 |   8967 |  14.90354 |\n",
       "| member |  2 |   5230 |  25.14379 |\n",
       "| member |  3 |   3546 |  26.03666 |\n",
       "| member |  4 |   6686 |  11.13506 |\n",
       "| member |  5 |  34443 |  10.97898 |\n",
       "| member |  6 | 104094 |  12.00110 |\n",
       "| member |  7 | 229602 |  12.76303 |\n",
       "| member |  8 | 288164 |  12.97057 |\n",
       "| member |  9 | 137069 |  13.23236 |\n",
       "| member | 10 | 102288 |  13.45818 |\n",
       "| member | 11 | 122331 |  13.00414 |\n",
       "| member | 12 | 139549 |  15.61391 |\n",
       "| member | 13 | 135236 |  13.87369 |\n",
       "| member | 14 | 130495 |  14.16961 |\n",
       "| member | 15 | 166568 |  14.50938 |\n",
       "| member | 16 | 295834 |  14.14918 |\n",
       "| member | 17 | 391277 |  14.90031 |\n",
       "| member | 18 | 248234 |  15.12883 |\n",
       "| member | 19 | 159256 |  16.09076 |\n",
       "| member | 20 | 100127 |  14.93610 |\n",
       "| member | 21 |  71863 |  15.19412 |\n",
       "| member | 22 |  48800 |  14.32344 |\n",
       "| member | 23 |  28452 |  14.52907 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual hour number_of_rides average_duration\n",
       "1  casual         0     8363          104.26330       \n",
       "2  casual         1     5495          103.82475       \n",
       "3  casual         2     3361          103.88605       \n",
       "4  casual         3     1982          170.22704       \n",
       "5  casual         4     1196          126.54515       \n",
       "6  casual         5     2690           99.01561       \n",
       "7  casual         6     6291           66.40089       \n",
       "8  casual         7    13302           32.20192       \n",
       "9  casual         8    22304           54.82209       \n",
       "10 casual         9    29057           68.19341       \n",
       "11 casual        10    45374           69.45656       \n",
       "12 casual        11    61323           58.23836       \n",
       "13 casual        12    71626           55.42015       \n",
       "14 casual        13    77406           57.65706       \n",
       "15 casual        14    81143           59.25938       \n",
       "16 casual        15    82461           57.74901       \n",
       "17 casual        16    85398           54.40742       \n",
       "18 casual        17    86809           60.06746       \n",
       "19 casual        18    69297           51.81875       \n",
       "20 casual        19    51181           53.54501       \n",
       "21 casual        20    34930           61.71045       \n",
       "22 casual        21    25433           66.40039       \n",
       "23 casual        22    21421           62.96401       \n",
       "24 casual        23    14339           49.68533       \n",
       "25 member         0    15749           17.08667       \n",
       "26 member         1     8967           14.90354       \n",
       "27 member         2     5230           25.14379       \n",
       "28 member         3     3546           26.03666       \n",
       "29 member         4     6686           11.13506       \n",
       "30 member         5    34443           10.97898       \n",
       "31 member         6   104094           12.00110       \n",
       "32 member         7   229602           12.76303       \n",
       "33 member         8   288164           12.97057       \n",
       "34 member         9   137069           13.23236       \n",
       "35 member        10   102288           13.45818       \n",
       "36 member        11   122331           13.00414       \n",
       "37 member        12   139549           15.61391       \n",
       "38 member        13   135236           13.87369       \n",
       "39 member        14   130495           14.16961       \n",
       "40 member        15   166568           14.50938       \n",
       "41 member        16   295834           14.14918       \n",
       "42 member        17   391277           14.90031       \n",
       "43 member        18   248234           15.12883       \n",
       "44 member        19   159256           16.09076       \n",
       "45 member        20   100127           14.93610       \n",
       "46 member        21    71863           15.19412       \n",
       "47 member        22    48800           14.32344       \n",
       "48 member        23    28452           14.52907       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#arrange by hour \n",
    "all_data_v1 %>% \n",
    "    mutate(hour = hour(started_at)) %>% \n",
    "    group_by(member_casual, hour) %>% \n",
    "    summarise(number_of_rides = n()\n",
    "              ,average_duration = mean(ride_length),.groups=\"keep\") %>% \n",
    "    arrange(member_casual, hour)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "cf2e6db9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:17:06.298052Z",
     "iopub.status.busy": "2022-04-24T03:17:06.295762Z",
     "iopub.status.idle": "2022-04-24T03:17:06.874450Z",
     "shell.execute_reply": "2022-04-24T03:17:06.871913Z"
    },
    "papermill": {
     "duration": 0.604678,
     "end_time": "2022-04-24T03:17:06.877155",
     "exception": false,
     "start_time": "2022-04-24T03:17:06.272477",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#plot by hour\n",
    "all_data_v1 %>% \n",
    "    mutate(hour = hour(started_at)) %>% \n",
    "    group_by(member_casual,hour) %>% \n",
    "    summarise(average_duration = mean(ride_length),.groups=\"keep\") %>% \n",
    "    arrange(member_casual, hour)  %>% \n",
    "    ggplot(aes(x = hour, y = average_duration, fill = member_casual)) +\n",
    "    geom_col(position = \"dodge\")+labs(title=\"Average Ride Length by Hour for Different User Types\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "328e7f3b",
   "metadata": {
    "papermill": {
     "duration": 0.021544,
     "end_time": "2022-04-24T03:17:06.920467",
     "exception": false,
     "start_time": "2022-04-24T03:17:06.898923",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "From this plot, we can see that both members and casual riders have the longest duration of use during the morning hours of midnight through until 6 am. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "9ff44260",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-04-24T03:17:06.967127Z",
     "iopub.status.busy": "2022-04-24T03:17:06.964956Z",
     "iopub.status.idle": "2022-04-24T03:17:07.535189Z",
     "shell.execute_reply": "2022-04-24T03:17:07.532873Z"
    },
    "papermill": {
     "duration": 0.596297,
     "end_time": "2022-04-24T03:17:07.537966",
     "exception": false,
     "start_time": "2022-04-24T03:17:06.941669",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nPd363BIZtPP75V9uPl6x9fhZt5cp3L4UbchXnwyo8dA79avf2bt767L6+C/nz/3XYZ31eS9L\nKdM9JQd8/2a7QfphN1WwHN378/tzV0WWNWX+vWPG4s/6dBl3T6n3No6/44GjvZvUreaMP77y\n/QVafclxk6JFpEOPmq9O+K1hy57Du7fM+u/AorffORNukH/sImIp1dVDs08+1im3kj3x6rxC\nAAAAz2yVuuze/XWf+ypt+eKDsePf+e1ciVfmf7NjQfd8N3jb9J/mj+3599YvJ02YvvVYUJ8x\n8/esGa0UQV+VH5y2f+2cVtUSPpo5fvy0ha667T/ccvDpmqGiMa3cubp7y8orZ74yeMzUrYec\n838/uvKzsZWCMl98emCCK2jVnxsGdW6+95vF40eNfHv+V6HNH//814OPV7CJSPSrm94d8ljQ\n3xtffKbvi+PejK/f9X/L77zQn8dm4+1OT7XmRnG5CuG4n1ukWX8kLauwWis6TqczNjbWN30F\nBwcbDIaMjIykpCTf9Jg/7keMJCfn82i5bwQFBRmNxqysrISEBD+WUWrPQc8jpNwardPpEhMT\nC9LIuXq18lxZXlitVrPZbLfb4+Pji7SjAjKZTEaj0b9rPFdms9lqtRbwi6VQNolcG7G3aBIX\nF1fUZRSEyWRyfx2dP3++SDsqIL1eHxwcHBMT4+9CLhMeHu7vEnANzozEf87ZK1Uo4ZvuCvOn\nWAAAAOSkMQZXquC77gh2AABAtY5/2S66z48eRjCG3Pnf8ZU+q6eoEewAAIBqVXno67iH/F2E\nD3HxBAAAgEoQ7AAAAFSCYAcAAKASBDsAAACV8BTsWjas9+QP/7pf165d+7WTudyJbdz0GYVW\nFwAAAPLI01Wxp/86dHjS/K0vt9Zr5MCBA7t/++WXf4OuOeZtt90mIj2eeqZIagQAAIAXPAW7\nOYOat5zySot1r7jfruh074rrjFmIj68AAABA/ngKdne/8d3Rzlu2H/3P4XJ17dr1vncW9CmT\nz+f4AgCAYqTonoQZFHTtX/9QKHK5QXHVm++oerOIyOeff966S5dHy1p9URQAAPA3w4TRhd5m\n5piJhd4mcvL2yROfffaZiKSe2vX5V+v3HT2d6tCVq1b3vo6dbqpo82Zylz3uy/nzvvnpj5h0\nTbmKNTr0eLp1dNn81uzctHT26i07/k7SRtW7tdezvatZdCJyZtvofpP/zDlen4XLO5Y05bcX\n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\nr3g8dvY1tz3z6L0n7x59/dMjfzavMf2nR1F08EGX7PONq/706G/O/HRiysRPTnr2vZ6H/d/j\nP9/v8995/Nmf5nZj9Ea6H574n4EVjz83P4p2XG36gmcXJ2v37utUAMCGaOep9570+dFRFJ0/\nbddpe8586J4fbVcZj7Yfdfaw8+94clF0xIjmt66+7LlF/9fwy33qklEU7bzbPu2/GTjl1CeP\nf+SgdJ7evZTdbnrk+0eMiKJo970PWPbMwOnH33neH7p6GHbhFtdMPm6/PG2S9ZPuEbuLb/r6\n2w9P+NFvX/3gxNd+f8URv/339mdOyUIwAGCDs9Geg7p/KKsrL01utl3lf45ADYyXpLpSURQt\nnTMzlerat3957H3fmtPQ9PrcNJ/e7fQDN13184QTRzW/eXfPw46cuE0W17lP9XTE7owzzvjg\nr/tuWnLeF7eZvvPen9x6VG2sad6cWU+88HppYqOD+z8TRTtnOScAsKFZw+Gnsn4VJfG6xqVv\nfvBua7GSRJpP/+gDiQGJWElZz8PWDljj+IWop2J34403rj53PP7my8+++fKzq36Nuuov+Pa3\nvnfm6dkKCADwvn7DT0h1PjD97fZvj6qLoiiKUt8Zt/e743/+yxNGpz/IDX98e+yhW3T/fMeP\nX+235RX9hg/OfNhC0FOxa29vz1kOAIB1Kh/whav3H3reXgdXX3ve7lv2f+Tn37nm6bd+9+uP\nr9cgDx6z/2UtV48dWfXEbT+88G/Lps7+n/IB/TMfthCszzdPAADk2xm/nbXizBMvOfXwd1uT\nW+30mdueuH///uvxHaeliY0fvuqwcy464YIFLSN33OWKe2efuXX/zIctELFUKt3vjVj5zpyn\nZ71Sv3wNh/HGjx/fp6myq6urq6GhITfLqq2tTSQSra2tTU1NuVli71RXV0dR1NzcnO8gPamp\nqUkmk+3t7Y2NjXmMMXj23J5nWL7rTvF4fNmyZZkMsmhMdg/+V1VVVVRUdHR0LF1a0PfbLC8v\nTyaT+X3F16mioqKqqirDN5Y+2SXWOUjH3p9asmRJtmNkory8vPvtaPHixVldUIbKyspqa2vr\n6+vzHeRDBg0a1IejNTU11c56uQ8H7LZsl+1ramr6fFhWSfeI3Rv3fHeXI69qWMu9nIur2AEA\nBCndYnfGSTcsKx12wfWXfmabzeKxdc8PAECOpVvs/rS0dYeLfnPhiTtkNQ0AAL2W7g2K96xN\n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\n2ticZx+69tyTOqfd8tlNKrtn62z51zfPuvT+e3+xzqHa9l3rIrr985//rK+v7/65pKRk1KhR\n2VnX3igrK1v3TFkeoaSkJIqiVL5jhDFCaWlpSUlJZ75jhDFCFEWxWCzvMcIYIbIx+3qQgsrQ\n3t7eh6NRvHJR7Lpal0dRNDD+3wveBpWVdjS3tNT/5p7XGn/4q7PGVJVFUTRiyzGdz0248yd/\n/+wPPrm+Q61t+qpfZ8yYMXPmzO6f+/fv/8gjj/TV2kVR1JrZ0/v165f3ERKJRBTEihTCCMlk\nMoqiDItdIaxIn4wQZbxfxeNxGzPqo43Z/V+4DGOEsSkyj5F5S+5ekb6yePHiPhyN4pWLYleS\nqIiiaElHV3VpafeU+vbO0rpE85t/SaVS3zvyKx+cuarjrSi1c0trexRFHS2tURS1tPynnyXL\ny9c21Nqm52DtoihKXnZtD4+mcxisEEYokBhhjFAgMQphhAKJEcYIBRKjEEYokBh9siLQt3JR\n7MqqtouiJ+au7BiW/E/rmreyo99edfGqRKy06q47Znxw5lhJ2YpFdxxx/N2rphx++OHdP0y9\n+75N1jLU2haxapBJkyadffbZ3T+nUqlVp2Wzrba2tqysrLW1tbm5OTdL7J3q6uooigo/ZDKZ\nbG9vX7ZsWb6z9KSysrK0tLSpqSnfQXpSWVlZUVHR2dm5dOnSfGfpSXl5eSKRKPBXvKKiorKy\nsqura8mSJfnO0pNkMllRUVHgr3gymex+O8rZu3TvlJWV1dTUNDQ05DsIrC4Xxa687jObJG58\n+KmF4w4aFkVR+/KXnm9q+/K4IZX9Doi6np/Z0HnIJt2fXU3d/P1zl+515lkHHPXAA0dFUdSx\ncs6hEz50jV2UXPNQ5XWbrXH6qudVVFRUVFR0/9zV1ZWzv42pVGq1HwpTd7wCD7lKgecsoo2Z\nSqUKPGdRbEx/zbOhwHMW18Zkg5KTG73FEt85dKt/3HLhH2fNfef12TdP/nHlxmOP2bQ6UfOJ\n43cc+MtzLp755Kw3Xp97//RzH3y1fr89P9aLodY6HQBgg5Gbbuf+AAAKCElEQVSjGxSPHH/x\nqa1T77x6cn1LbMQO+1w85YTuRnnQ5Ktbf3r9r2+8bEl72abDtz/r0kk7Vq/jU0JrG2pt0wEA\nNhCxDfBIci5PxdbW1iYSidbW1gK/4qoorrGrqanpvsausbEx31l6UllZGY/HC/yysKqqqoqK\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#arrange by rides by hour for different user types and plot\n",
    "all_data_v1 %>% \n",
    "    mutate(hour = hour(started_at)) %>% \n",
    "    group_by(member_casual,hour) %>% \n",
    "    summarise(number_of_rides = n(),.groups=\"keep\") %>% \n",
    "    arrange(member_casual, hour)  %>% \n",
    "    ggplot(aes(x = hour, y = number_of_rides, fill = member_casual)) +\n",
    "    geom_col(position = \"dodge\")+labs(title=\"Number of Rides by Hour for Different User Types\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9c976968",
   "metadata": {
    "papermill": {
     "duration": 0.022102,
     "end_time": "2022-04-24T03:17:07.582885",
     "exception": false,
     "start_time": "2022-04-24T03:17:07.560783",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "More specifically, we can see that the number of rides increase between 7-9 am and 3-6 pm for members. One reason for this could be the use of the bikes for worker commutes, as these are typically high traffic times for work commutes. \n",
    "\n",
    "Casual riders are more likely to ride between noon and 5 pm, so a slight trend is found during daytime hours in the afternoon. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "037c912f",
   "metadata": {
    "papermill": {
     "duration": 0.02212,
     "end_time": "2022-04-24T03:17:07.627060",
     "exception": false,
     "start_time": "2022-04-24T03:17:07.604940",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Recommendations for Cyclistic Bike Share"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ef9a3d36",
   "metadata": {
    "papermill": {
     "duration": 0.022859,
     "end_time": "2022-04-24T03:17:07.671994",
     "exception": false,
     "start_time": "2022-04-24T03:17:07.649135",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Casual riders have longer average ride duration as opposed to members. This means that marketing should be targeting points or other incentives for longer rides for casual members. \n",
    "\n",
    "The highest number of rides was found in **summer** for both casual and member riders, so promotions should be held during these months when revenue will be high. Weather appears to affect ridership and it has a sharp decrease during the winter months. \n",
    "\n",
    "Members tend to ride during the **weekdays**, as opposed to casual riders on the **weekends**. This means that casual riders should recieve targeted promotions during the weekend, such as deals and other benefits. Members should be marketed towards during the week. It is likely most members are using this bike share for their work commute. \n",
    "\n",
    "The longest ride length is on Saturdays for casual riders and Fridays for members. Fridays and Saturdays should be days with promotions for longer rides. \n",
    "\n",
    "**Peak times (members)**: Between *6:00 am- 9:00 am* and *3:00 pm- 6:00 pm*. \n",
    "**Peak times (casual riders)**: Between *12:00 pm and 5:00 pm*. \n",
    "\n"
   ]
  },
  {
   "attachments": {
    "e8bf4a7a-71bc-4f5b-a3b7-bb3b5259dbdf.jpg": {
     "image/jpeg": "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"
    }
   },
   "cell_type": "markdown",
   "id": "560dda44",
   "metadata": {
    "papermill": {
     "duration": 0.022303,
     "end_time": "2022-04-24T03:17:07.716804",
     "exception": false,
     "start_time": "2022-04-24T03:17:07.694501",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![Google Data Analytics.jpg](attachment:e8bf4a7a-71bc-4f5b-a3b7-bb3b5259dbdf.jpg)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b541c24c",
   "metadata": {
    "papermill": {
     "duration": 0.02234,
     "end_time": "2022-04-24T03:17:07.761303",
     "exception": false,
     "start_time": "2022-04-24T03:17:07.738963",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> Completed April 2022 by Caitlin Malloch"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 254.364995,
   "end_time": "2022-04-24T03:17:08.209807",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-04-24T03:12:53.844812",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
