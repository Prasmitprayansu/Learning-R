{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "c816083d",
   "metadata": {
    "_cell_guid": "2fa76457-e656-4397-9867-a09b09907379",
    "_uuid": "a9846c21e29b54b6f986ff40f3c48e7a311de237",
    "papermill": {
     "duration": 0.007485,
     "end_time": "2026-05-10T03:48:37.843619",
     "exception": false,
     "start_time": "2026-05-10T03:48:37.836134",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![](https://www.r-project.org/Rlogo.png)\n",
    "\n",
    "____________________________________________________________________________________\n",
    "This tutorial is the third part of a series. You can start with the first part of the tutorial [here](https://www.kaggle.com/rtatman/getting-started-in-r-first-steps/).\n",
    "\n",
    "In this part of the tutorial, we'll:\n",
    "\n",
    "* make sure our data_frame has the right data types\n",
    "* summarize our data\n",
    "* find the summary statistics for a specific variable\n",
    "* summarize a variable by groups\n",
    "\n",
    "____________________________________________________________________________________\n",
    "\n",
    "\n",
    "### Learning goals:\n",
    "\n",
    "By the end of this tutorial, you will be able to do the following things. (Don't worry if you don't know what all these things are yet; we'll get there together!)\n",
    "\n",
    "* [Be familiar with basic concepts: functions, variables, data types and vectors](https://www.kaggle.com/rtatman/getting-started-in-r-first-steps/)\n",
    "* [Load data into R](https://www.kaggle.com/rtatman/getting-started-in-r-load-data-into-r)\n",
    "* [Summerize your data](https://www.kaggle.com/rtatman/getting-started-in-r-summarize-data)\n",
    "* [Graph data and save your graphs](https://www.kaggle.com/rtatman/getting-started-in-r-graphing-data/)\n",
    "\n",
    "______\n",
    "\n",
    "### Your turn!\n",
    "\n",
    "Throughout this tutorial, you'll have lots of opportunities to practice what you've just learned. Look for the phrase \"your turn!\" to find these exercises."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "62601fea",
   "metadata": {
    "_cell_guid": "5fc41a57-44a9-48da-9990-89dba03d6b74",
    "_uuid": "c81e2dc1b6b5687dcec2e4ba78e535137a92a108",
    "papermill": {
     "duration": 0.006458,
     "end_time": "2026-05-10T03:48:37.856855",
     "exception": false,
     "start_time": "2026-05-10T03:48:37.850397",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> **This notebook is interactive! It will have errors until you fork it and add all the code it needs to run correctly. Don't worry: if you've been working through this tutorial you already know everything you need to get it working correctly and I'll give you instructions and reminders to help you out.**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d0aa03a1",
   "metadata": {
    "_cell_guid": "867cad27-c506-416f-be34-ce1d747153c4",
    "_uuid": "8d7230f9a43418336b7f66a12245aaf94a440034",
    "papermill": {
     "duration": 0.006482,
     "end_time": "2026-05-10T03:48:37.869787",
     "exception": false,
     "start_time": "2026-05-10T03:48:37.863305",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Load our data into R\n",
    "\n",
    "Because this is a new notebook & it's not connected to our last notebook, we need to tell R that we're going to be using the tidyverse package, read in our data and remove the first row all over again. This is because this notebook is in a new session, and every time we start a new session R forgets everything we did in the last one. \n",
    "\n",
    "> Session: your current R working environment and anything that you've created within in, including libraries, datasets, variables and any functions that you've written.\n",
    "\n",
    "This is a great chance for you to review what we learned in the last part of the tutorial! Try to follow the steps below on your own first. If you forget, you can also look [back at the last section](https://www.kaggle.com/rtatman/getting-started-in-r-load-data-into-r) for help."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "ad6ebabd",
   "metadata": {
    "_cell_guid": "1f8b9646-80d1-49a1-8b4c-5eccf7fbfe1b",
    "_uuid": "400c19d49c96f13b53eb6a90bda6fa5c21f40fa3",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:37.887477Z",
     "iopub.status.busy": "2026-05-10T03:48:37.885052Z",
     "iopub.status.idle": "2026-05-10T03:48:39.446118Z",
     "shell.execute_reply": "2026-05-10T03:48:39.444041Z"
    },
    "papermill": {
     "duration": 1.572545,
     "end_time": "2026-05-10T03:48:39.448759",
     "exception": false,
     "start_time": "2026-05-10T03:48:37.876214",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.4     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1mRows: \u001b[22m\u001b[34m1795\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m9\u001b[39m\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m (6): Company \n",
      "(Maker-if known), Specific Bean Origin\n",
      "or Bar Name, Cocoa\n",
      "...\n",
      "\u001b[32mdbl\u001b[39m (3): REF, Review\n",
      "Date, Rating\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company \n",
       "(Maker-if known)</th><th scope=col>Specific Bean Origin\n",
       "or Bar Name</th><th scope=col>REF</th><th scope=col>Review\n",
       "Date</th><th scope=col>Cocoa\n",
       "Percent</th><th scope=col>Company\n",
       "Location</th><th scope=col>Rating</th><th scope=col>Bean\n",
       "Type</th><th scope=col>Broad Bean\n",
       "Origin</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>A. Morin</td><td>Kpime   </td><td>1676</td><td>2015</td><td>70%</td><td>France</td><td>2.75</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Atsane  </td><td>1676</td><td>2015</td><td>70%</td><td>France</td><td>3.00</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Akata   </td><td>1680</td><td>2015</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Quilla  </td><td>1704</td><td>2015</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Peru     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Carenero</td><td>1315</td><td>2014</td><td>70%</td><td>France</td><td>2.75</td><td>Criollo</td><td>Venezuela</td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Cuba    </td><td>1315</td><td>2014</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Cuba     </td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " Company \n",
       "(Maker-if known) & Specific Bean Origin\n",
       "or Bar Name & REF & Review\n",
       "Date & Cocoa\n",
       "Percent & Company\n",
       "Location & Rating & Bean\n",
       "Type & Broad Bean\n",
       "Origin\\\\\n",
       " <chr> & <chr> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t A. Morin & Kpime    & 1676 & 2015 & 70\\% & France & 2.75 &         & Togo     \\\\\n",
       "\t A. Morin & Atsane   & 1676 & 2015 & 70\\% & France & 3.00 &         & Togo     \\\\\n",
       "\t A. Morin & Akata    & 1680 & 2015 & 70\\% & France & 3.50 &         & Togo     \\\\\n",
       "\t A. Morin & Quilla   & 1704 & 2015 & 70\\% & France & 3.50 &         & Peru     \\\\\n",
       "\t A. Morin & Carenero & 1315 & 2014 & 70\\% & France & 2.75 & Criollo & Venezuela\\\\\n",
       "\t A. Morin & Cuba     & 1315 & 2014 & 70\\% & France & 3.50 &         & Cuba     \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 9\n",
       "\n",
       "| Company \n",
       "(Maker-if known) &lt;chr&gt; | Specific Bean Origin\n",
       "or Bar Name &lt;chr&gt; | REF &lt;dbl&gt; | Review\n",
       "Date &lt;dbl&gt; | Cocoa\n",
       "Percent &lt;chr&gt; | Company\n",
       "Location &lt;chr&gt; | Rating &lt;dbl&gt; | Bean\n",
       "Type &lt;chr&gt; | Broad Bean\n",
       "Origin &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| A. Morin | Kpime    | 1676 | 2015 | 70% | France | 2.75 |         | Togo      |\n",
       "| A. Morin | Atsane   | 1676 | 2015 | 70% | France | 3.00 |         | Togo      |\n",
       "| A. Morin | Akata    | 1680 | 2015 | 70% | France | 3.50 |         | Togo      |\n",
       "| A. Morin | Quilla   | 1704 | 2015 | 70% | France | 3.50 |         | Peru      |\n",
       "| A. Morin | Carenero | 1315 | 2014 | 70% | France | 2.75 | Criollo | Venezuela |\n",
       "| A. Morin | Cuba     | 1315 | 2014 | 70% | France | 3.50 |         | Cuba      |\n",
       "\n"
      ],
      "text/plain": [
       "  Company \\n(Maker-if known) Specific Bean Origin\\nor Bar Name REF \n",
       "1 A. Morin                   Kpime                             1676\n",
       "2 A. Morin                   Atsane                            1676\n",
       "3 A. Morin                   Akata                             1680\n",
       "4 A. Morin                   Quilla                            1704\n",
       "5 A. Morin                   Carenero                          1315\n",
       "6 A. Morin                   Cuba                              1315\n",
       "  Review\\nDate Cocoa\\nPercent Company\\nLocation Rating Bean\\nType\n",
       "1 2015         70%            France            2.75             \n",
       "2 2015         70%            France            3.00             \n",
       "3 2015         70%            France            3.50             \n",
       "4 2015         70%            France            3.50             \n",
       "5 2014         70%            France            2.75   Criollo   \n",
       "6 2014         70%            France            3.50             \n",
       "  Broad Bean\\nOrigin\n",
       "1 Togo              \n",
       "2 Togo              \n",
       "3 Togo              \n",
       "4 Peru              \n",
       "5 Venezuela         \n",
       "6 Cuba              "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# call the \"tidyverse\" library using the library() function\n",
    "library(tidyverse)\n",
    "# read our data file into R and assign it to a variable called \"chocolateData\". \n",
    "# Remember that you can find out where the data is by expanding the \"Input Files\"\n",
    "# box above by clicking the + sign in the left corner.\n",
    "chocolateData <- read_csv(\"../input/flavors_of_cacao.csv\")\n",
    "# remove the first row of the chocolateData data_frame using a negative index\n",
    "chocolateData <- chocolateData[-1, ]\n",
    "# check the first few rows of your data using the head() function to make sure it\n",
    "# looks alright\n",
    "head(chocolateData)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "d3b1d856",
   "metadata": {
    "_cell_guid": "fb2c4d0e-dce9-48cc-9ddc-4d9d09fbb652",
    "_uuid": "99c6c48c7b7abc87ccbeced0a26be7bf73883f2a",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:39.498610Z",
     "iopub.status.busy": "2026-05-10T03:48:39.466456Z",
     "iopub.status.idle": "2026-05-10T03:48:39.528383Z",
     "shell.execute_reply": "2026-05-10T03:48:39.526105Z"
    },
    "papermill": {
     "duration": 0.074876,
     "end_time": "2026-05-10T03:48:39.531200",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.456324",
     "status": "completed"
    },
    "scrolled": true,
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [1,794 × 9] (S3: tbl_df/tbl/data.frame)\n",
      " $ Company _(Maker-if_known)       : chr [1:1794] \"A. Morin\" \"A. Morin\" \"A. Morin\" \"A. Morin\" ...\n",
      " $ Specific_Bean_Origin_or_Bar_Name: chr [1:1794] \"Kpime\" \"Atsane\" \"Akata\" \"Quilla\" ...\n",
      " $ REF                             : num [1:1794] 1676 1676 1680 1704 1315 ...\n",
      " $ Review_Date                     : num [1:1794] 2015 2015 2015 2015 2014 ...\n",
      " $ Cocoa_Percent                   : chr [1:1794] \"70%\" \"70%\" \"70%\" \"70%\" ...\n",
      " $ Company_Location                : chr [1:1794] \"France\" \"France\" \"France\" \"France\" ...\n",
      " $ Rating                          : num [1:1794] 2.75 3 3.5 3.5 2.75 3.5 3.5 3.75 4 2.75 ...\n",
      " $ Bean_Type                       : chr [1:1794] \" \" \" \" \" \" \" \" ...\n",
      " $ Broad_Bean_Origin               : chr [1:1794] \"Togo\" \"Togo\" \"Togo\" \"Peru\" ...\n"
     ]
    }
   ],
   "source": [
    "# Before we get going, let's get rid of the white spaces in the column names of this\n",
    "# dataset. This will make it possible for us to refer to columns by thier names, since\n",
    "# any white space in a name will mess R up.\n",
    "\n",
    "names(chocolateData) <- gsub(\"[[:space:]+]\", \"_\", names(chocolateData))\n",
    "str(chocolateData)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6e98de3a",
   "metadata": {
    "_cell_guid": "7f520705-436c-4bfa-896d-faa06d2e0c2f",
    "_uuid": "013f50033dd520e270b61595c187aa7b23d3ade6",
    "papermill": {
     "duration": 0.007369,
     "end_time": "2026-05-10T03:48:39.547177",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.539808",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Data Cleaning"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4475e842",
   "metadata": {
    "_cell_guid": "52f3936d-b721-4c2d-a926-066f7a509e02",
    "_uuid": "1273cfd468efff42c3c7ca88b026d36b36b632e8",
    "papermill": {
     "duration": 0.007287,
     "end_time": "2026-05-10T03:48:39.561874",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.554587",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Excellent! Now that we've read our data into R, however, we have lots of questions that we want to ask about it.\n",
    "\n",
    "The first thing that I usually do with a new dataset, however, is make sure that all of the data that I *think* should be a particular data type actually *is* that datatype. We can do this using the str() function we learned about in [the first part of this tutorial](https://www.kaggle.com/rtatman/getting-started-in-r-first-steps). "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "d33b3a3e",
   "metadata": {
    "_cell_guid": "5c394b81-ca26-4652-99b9-92645e4febc9",
    "_uuid": "d3eca0d5daf078eb9b7346f450372def9aee7e03",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:39.581071Z",
     "iopub.status.busy": "2026-05-10T03:48:39.579126Z",
     "iopub.status.idle": "2026-05-10T03:48:39.605219Z",
     "shell.execute_reply": "2026-05-10T03:48:39.603066Z"
    },
    "papermill": {
     "duration": 0.038118,
     "end_time": "2026-05-10T03:48:39.607679",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.569561",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [1,794 × 9] (S3: tbl_df/tbl/data.frame)\n",
      " $ Company _(Maker-if_known)       : chr [1:1794] \"A. Morin\" \"A. Morin\" \"A. Morin\" \"A. Morin\" ...\n",
      " $ Specific_Bean_Origin_or_Bar_Name: chr [1:1794] \"Kpime\" \"Atsane\" \"Akata\" \"Quilla\" ...\n",
      " $ REF                             : num [1:1794] 1676 1676 1680 1704 1315 ...\n",
      " $ Review_Date                     : num [1:1794] 2015 2015 2015 2015 2014 ...\n",
      " $ Cocoa_Percent                   : chr [1:1794] \"70%\" \"70%\" \"70%\" \"70%\" ...\n",
      " $ Company_Location                : chr [1:1794] \"France\" \"France\" \"France\" \"France\" ...\n",
      " $ Rating                          : num [1:1794] 2.75 3 3.5 3.5 2.75 3.5 3.5 3.75 4 2.75 ...\n",
      " $ Bean_Type                       : chr [1:1794] \" \" \" \" \" \" \" \" ...\n",
      " $ Broad_Bean_Origin               : chr [1:1794] \"Togo\" \"Togo\" \"Togo\" \"Peru\" ...\n"
     ]
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# Use the str() function to check the data type of the columns in chocolateData\n",
    "str(chocolateData)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c00827a6",
   "metadata": {
    "_cell_guid": "0211d2ba-19ac-4c52-8e2d-cb96b48efb14",
    "_uuid": "2e029d6a7bfaaa1d69960b4845ea7e780364326a",
    "papermill": {
     "duration": 0.007393,
     "end_time": "2026-05-10T03:48:39.622600",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.615207",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "This has a lot of output, but don't be scared! We'll work through it together. Your output should look something like this:\n",
    "\n",
    "![](https://image.ibb.co/eKYCK5/Screenshot_from_2017_08_29_16_09_09.png)\n",
    "\n",
    "The first row shows you the class of the object and its size. Like I mentioned in the last section, a data_frame is a special type of data.frame called a tibble, which is abbreviated here to tbl. You can see that this tibble is 1795 rows long and 9 columns wide.\n",
    "\n",
    "In R, the dollar sign ($) has a special meaning. It means that whatever comes directly after it is a column in a data_frame. You can use this to look at specific columns in a data_frame, like so:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "631a0a93",
   "metadata": {
    "_cell_guid": "a8a356c5-4a0f-4241-bea7-aa3440df8e0f",
    "_uuid": "e264a5fedcecef6609f3c5328d30bf5db7987685",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:39.641292Z",
     "iopub.status.busy": "2026-05-10T03:48:39.639569Z",
     "iopub.status.idle": "2026-05-10T03:48:39.660203Z",
     "shell.execute_reply": "2026-05-10T03:48:39.658072Z"
    },
    "papermill": {
     "duration": 0.033379,
     "end_time": "2026-05-10T03:48:39.663338",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.629959",
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
       "<ol class=list-inline><li>2.75</li><li>3</li><li>3.5</li><li>3.5</li><li>2.75</li><li>3.5</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 2.75\n",
       "\\item 3\n",
       "\\item 3.5\n",
       "\\item 3.5\n",
       "\\item 2.75\n",
       "\\item 3.5\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 2.75\n",
       "2. 3\n",
       "3. 3.5\n",
       "4. 3.5\n",
       "5. 2.75\n",
       "6. 3.5\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 2.75 3.00 3.50 3.50 2.75 3.50"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#print the first few values from the column named \"Rating\" in the dataframe \"chocolateData\" \n",
    "head(chocolateData$Rating)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ffb8423f",
   "metadata": {
    "_cell_guid": "371b7590-5415-406b-b73b-7d2ad36a8d8f",
    "_uuid": "9eaec0d2790e4fca1a8014f16641dfe93f80e21a",
    "papermill": {
     "duration": 0.007579,
     "end_time": "2026-05-10T03:48:39.678616",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.671037",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "So all the text that comes after each dollar sign ($) here is just telling you that that's a column and it has that specific name. If you count them, you can see that there are 9 columns, just like it says in the first row of the output.\n",
    "\n",
    "The next thing we can see from this is the type of data in each column. You can see from the fact that each column has \"chr\" printed after the colon (:) that all of these columns are of the data type \"character\". (We learned about data types in the very first part of the tutorial, [here](https://www.kaggle.com/rtatman/getting-started-in-r-first-steps/). If this doesn't sound familiar you might want to peek back for a quick refresher).\n",
    "\n",
    "The last thing we can see is the first couple of observations in each column. However, looking at these we can see that they're not all numbers. In fact, we probably want several of our columns, like REF, Review Date and Rating, to be numeric instead. We *could* convert each column using the as.numeric() function we learned in the first part of the tutorial.\n",
    "\n",
    "Fortunately, we don't have to. The tidyverse has a lot of nice utility functions that can make our lives much easier. One of them is type_convert, which will look at the first 1000 rows of each column, guess what the data type of that column should be and then convert that column into that data type."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "9f1d26f5",
   "metadata": {
    "_cell_guid": "be92ef3a-fd8a-4fbf-9394-0a6182495140",
    "_uuid": "33e4b4fef60219a671da65b042b36686a19886b8",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:39.698586Z",
     "iopub.status.busy": "2026-05-10T03:48:39.696976Z",
     "iopub.status.idle": "2026-05-10T03:48:39.739791Z",
     "shell.execute_reply": "2026-05-10T03:48:39.737813Z"
    },
    "papermill": {
     "duration": 0.055691,
     "end_time": "2026-05-10T03:48:39.742760",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.687069",
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
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "cols(\n",
      "  `Company _(Maker-if_known)` = \u001b[31mcol_character()\u001b[39m,\n",
      "  Specific_Bean_Origin_or_Bar_Name = \u001b[31mcol_character()\u001b[39m,\n",
      "  Cocoa_Percent = \u001b[31mcol_character()\u001b[39m,\n",
      "  Company_Location = \u001b[31mcol_character()\u001b[39m,\n",
      "  Bean_Type = \u001b[31mcol_character()\u001b[39m,\n",
      "  Broad_Bean_Origin = \u001b[31mcol_character()\u001b[39m\n",
      ")\n",
      "\n"
     ]
    }
   ],
   "source": [
    "# automatically convert the data types of our data_frame\n",
    "chocolateData <- type_convert(chocolateData)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "e96a4af2",
   "metadata": {
    "_cell_guid": "9e6ba6b0-8dcb-412d-a362-53863d6c407a",
    "_uuid": "2d99fffd8e53290a9393155b7d4db4ac376f542a",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:39.762243Z",
     "iopub.status.busy": "2026-05-10T03:48:39.760532Z",
     "iopub.status.idle": "2026-05-10T03:48:39.786224Z",
     "shell.execute_reply": "2026-05-10T03:48:39.784077Z"
    },
    "papermill": {
     "duration": 0.038585,
     "end_time": "2026-05-10T03:48:39.789096",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.750511",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [1,794 × 9] (S3: tbl_df/tbl/data.frame)\n",
      " $ Company _(Maker-if_known)       : chr [1:1794] \"A. Morin\" \"A. Morin\" \"A. Morin\" \"A. Morin\" ...\n",
      " $ Specific_Bean_Origin_or_Bar_Name: chr [1:1794] \"Kpime\" \"Atsane\" \"Akata\" \"Quilla\" ...\n",
      " $ REF                             : num [1:1794] 1676 1676 1680 1704 1315 ...\n",
      " $ Review_Date                     : num [1:1794] 2015 2015 2015 2015 2014 ...\n",
      " $ Cocoa_Percent                   : chr [1:1794] \"70%\" \"70%\" \"70%\" \"70%\" ...\n",
      " $ Company_Location                : chr [1:1794] \"France\" \"France\" \"France\" \"France\" ...\n",
      " $ Rating                          : num [1:1794] 2.75 3 3.5 3.5 2.75 3.5 3.5 3.75 4 2.75 ...\n",
      " $ Bean_Type                       : chr [1:1794] \" \" \" \" \" \" \" \" ...\n",
      " $ Broad_Bean_Origin               : chr [1:1794] \"Togo\" \"Togo\" \"Togo\" \"Peru\" ...\n"
     ]
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# Check out the structure of the converted data using the str() function. What do you notice?\n",
    "# Are all the columns the data type you expected?\n",
    "str(chocolateData)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "993799c9",
   "metadata": {
    "_cell_guid": "6ced3b22-ae74-4099-ab2b-eb562be752ea",
    "_uuid": "7fdbef9f263688d37756085f4242395e25a002f2",
    "papermill": {
     "duration": 0.007835,
     "end_time": "2026-05-10T03:48:39.804829",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.796994",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "So it looks like there's still a bit of a problem: the column \"Cocoa Percent\" is a character, not a numeric value (which is what we'd usually want a percent to be). This is probably because the data in this column contains the percent symbol (%), which isn't a number. Let's remove all the percent symbols from this dataset & try again. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "a3af875d",
   "metadata": {
    "_cell_guid": "f1994830-6dc2-4b8d-ab3a-4cdf9518a32f",
    "_uuid": "320a28421d1ba20ef0a40bff7a61a0caacfe95f9",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:39.824612Z",
     "iopub.status.busy": "2026-05-10T03:48:39.822982Z",
     "iopub.status.idle": "2026-05-10T03:48:39.899405Z",
     "shell.execute_reply": "2026-05-10T03:48:39.897175Z"
    },
    "papermill": {
     "duration": 0.089448,
     "end_time": "2026-05-10T03:48:39.902268",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.812820",
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
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "cols(\n",
      "  `Company _(Maker-if_known)` = \u001b[31mcol_character()\u001b[39m,\n",
      "  Specific_Bean_Origin_or_Bar_Name = \u001b[31mcol_character()\u001b[39m,\n",
      "  Cocoa_Percent = \u001b[32mcol_double()\u001b[39m,\n",
      "  Company_Location = \u001b[31mcol_character()\u001b[39m,\n",
      "  Bean_Type = \u001b[31mcol_character()\u001b[39m,\n",
      "  Broad_Bean_Origin = \u001b[31mcol_character()\u001b[39m\n",
      ")\n",
      "\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "tibble [1,794 × 9] (S3: tbl_df/tbl/data.frame)\n",
      " $ Company _(Maker-if_known)       : chr [1:1794] \"A. Morin\" \"A. Morin\" \"A. Morin\" \"A. Morin\" ...\n",
      " $ Specific_Bean_Origin_or_Bar_Name: chr [1:1794] \"Kpime\" \"Atsane\" \"Akata\" \"Quilla\" ...\n",
      " $ REF                             : num [1:1794] 1676 1676 1680 1704 1315 ...\n",
      " $ Review_Date                     : num [1:1794] 2015 2015 2015 2015 2014 ...\n",
      " $ Cocoa_Percent                   : num [1:1794] 70 70 70 70 70 70 70 70 70 70 ...\n",
      " $ Company_Location                : chr [1:1794] \"France\" \"France\" \"France\" \"France\" ...\n",
      " $ Rating                          : num [1:1794] 2.75 3 3.5 3.5 2.75 3.5 3.5 3.75 4 2.75 ...\n",
      " $ Bean_Type                       : chr [1:1794] \" \" \" \" \" \" \" \" ...\n",
      " $ Broad_Bean_Origin               : chr [1:1794] \"Togo\" \"Togo\" \"Togo\" \"Peru\" ...\n"
     ]
    }
   ],
   "source": [
    "# remove all the percent signs in the fifth column. You don't really need to worry about\n",
    "# all the different things that are happening in this line right now. \n",
    "chocolateData$Cocoa_Percent <- sapply(chocolateData$Cocoa_Percent, function(x) gsub(\"%\", \"\", x))\n",
    "\n",
    "# try the type_convert() function agian\n",
    "chocolateData <- type_convert(chocolateData)\n",
    "\n",
    "# check the structure to make sure it actually is a percent\n",
    "str(chocolateData)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "458ede80",
   "metadata": {
    "_cell_guid": "1941ef9c-6953-4bdd-a689-7171de395b6a",
    "_uuid": "3d853a2d31ea43345fc673ee36ddb5fc0a417020",
    "papermill": {
     "duration": 0.007987,
     "end_time": "2026-05-10T03:48:39.918342",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.910355",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Alright, that all looks good: now we're ready to begin our analysis! The steps we've done so far, getting to the point where we can do our analysis, is usually called \"data cleaning\", and it's a surprisingly large part of data analysis. \n",
    "\n",
    "> As the joke goes: “80 percent of data science is preparing data, and the other 20 percent is complaining about preparing data.”"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f8a0001c",
   "metadata": {
    "_cell_guid": "8e63b64a-6789-4bf5-b162-1b107c17adc3",
    "_uuid": "80c589d96190c4ccada9b3cd1b90a1c86de278eb",
    "papermill": {
     "duration": 0.007855,
     "end_time": "2026-05-10T03:48:39.934554",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.926699",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Summarizing data"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "098370e2",
   "metadata": {
    "_cell_guid": "2fd1123b-d6bf-417f-9bb5-fd1f49a79c95",
    "_uuid": "3d8c944d2748823c2e102bb99cb01af84b640b13",
    "papermill": {
     "duration": 0.007784,
     "end_time": "2026-05-10T03:48:39.950557",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.942773",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Ok, our data is in R and clean. Now let's start summarizing it! There are a couple options for how to do this in R. \n",
    "\n",
    "> One thing you'll learn about R is that there are often multiple ways to do the same thing. This flexibility is really nice once you're comfortable in the language, but I also remember it being very frustrating when I was learning.\n",
    "\n",
    "Let's try two functions. The first, summary() is from base R, while the second, summarise_all(), is part of the Tidyverse. We'll run both and then compare the outputs.\n",
    "\n",
    "You can learn more about any function by looking at the documentation for that function. You can do that in a kernel by running a cell with a question mark in front of the function name, with no parentheses after it. (If you do this for more than one function in the same cell, you'll only see the documentation for the last one.) You can also use a search engine to find more information.\n",
    "\n",
    "> **Protip**: Never feel embarrassed about looking things up. Professional programmers look things up all the time; no one knows everything about every programming language!"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "9a454c07",
   "metadata": {
    "_cell_guid": "83e782a5-87e4-4ff4-af23-80da792ecfe0",
    "_uuid": "fce0016f967765ee564b54abc3004af334879040",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:39.970060Z",
     "iopub.status.busy": "2026-05-10T03:48:39.968451Z",
     "iopub.status.idle": "2026-05-10T03:48:40.227976Z",
     "shell.execute_reply": "2026-05-10T03:48:40.225321Z"
    },
    "papermill": {
     "duration": 0.272463,
     "end_time": "2026-05-10T03:48:40.230787",
     "exception": false,
     "start_time": "2026-05-10T03:48:39.958324",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# run this cell to learn more about the summary() function\n",
    "?summary"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "d4548bb6",
   "metadata": {
    "_cell_guid": "f58dcc1d-aad1-435c-af23-bb6d461feab4",
    "_uuid": "603d98408ae4ea990d7aa06a146e5c73c82d12fa",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:40.250599Z",
     "iopub.status.busy": "2026-05-10T03:48:40.248987Z",
     "iopub.status.idle": "2026-05-10T03:48:40.409368Z",
     "shell.execute_reply": "2026-05-10T03:48:40.406304Z"
    },
    "papermill": {
     "duration": 0.173027,
     "end_time": "2026-05-10T03:48:40.411868",
     "exception": false,
     "start_time": "2026-05-10T03:48:40.238841",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# run this cell to learn more about the summarise_all() function\n",
    "?summarise_all"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "1a8f59b5",
   "metadata": {
    "_cell_guid": "c7278c90-91ba-4191-a5b3-76bbd6e04487",
    "_uuid": "27d3ae38a0b3630511d204f7db8bbbc5092d97e9",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:40.432295Z",
     "iopub.status.busy": "2026-05-10T03:48:40.430520Z",
     "iopub.status.idle": "2026-05-10T03:48:40.693368Z",
     "shell.execute_reply": "2026-05-10T03:48:40.690730Z"
    },
    "papermill": {
     "duration": 0.276171,
     "end_time": "2026-05-10T03:48:40.696648",
     "exception": false,
     "start_time": "2026-05-10T03:48:40.420477",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       " Company _(Maker-if_known) Specific_Bean_Origin_or_Bar_Name      REF      \n",
       " Length:1794               Length:1794                      Min.   :   5  \n",
       " Class :character          Class :character                 1st Qu.: 576  \n",
       " Mode  :character          Mode  :character                 Median :1069  \n",
       "                                                            Mean   :1035  \n",
       "                                                            3rd Qu.:1502  \n",
       "                                                            Max.   :1952  \n",
       "  Review_Date   Cocoa_Percent   Company_Location       Rating     \n",
       " Min.   :2006   Min.   : 42.0   Length:1794        Min.   :1.000  \n",
       " 1st Qu.:2010   1st Qu.: 70.0   Class :character   1st Qu.:2.812  \n",
       " Median :2013   Median : 70.0   Mode  :character   Median :3.250  \n",
       " Mean   :2012   Mean   : 71.7                      Mean   :3.186  \n",
       " 3rd Qu.:2015   3rd Qu.: 75.0                      3rd Qu.:3.500  \n",
       " Max.   :2017   Max.   :100.0                      Max.   :5.000  \n",
       "  Bean_Type         Broad_Bean_Origin \n",
       " Length:1794        Length:1794       \n",
       " Class :character   Class :character  \n",
       " Mode  :character   Mode  :character  \n",
       "                                      \n",
       "                                      \n",
       "                                      "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22m`funs()` was deprecated in dplyr 0.8.0.\n",
      "\u001b[36mℹ\u001b[39m Please use a list of either functions or lambdas:\n",
      "\n",
      "# Simple named list: list(mean = mean, median = median)\n",
      "\n",
      "# Auto named with `tibble::lst()`: tibble::lst(mean, median)\n",
      "\n",
      "# Using lambdas list(~ mean(., trim = .2), ~ median(., na.rm = TRUE))”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22mThere were 5 warnings in `summarise()`.\n",
      "The first warning was:\n",
      "\u001b[1m\u001b[22m\u001b[36mℹ\u001b[39m In argument: `Company _(Maker-if_known) = mean(`Company _(Maker-if_known)`)`.\n",
      "Caused by warning in `mean.default()`:\n",
      "\u001b[33m!\u001b[39m argument is not numeric or logical: returning NA\n",
      "\u001b[1m\u001b[22m\u001b[36mℹ\u001b[39m Run `dplyr::last_dplyr_warnings()` to see the 4 remaining warnings.”\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company _(Maker-if_known)</th><th scope=col>Specific_Bean_Origin_or_Bar_Name</th><th scope=col>REF</th><th scope=col>Review_Date</th><th scope=col>Cocoa_Percent</th><th scope=col>Company_Location</th><th scope=col>Rating</th><th scope=col>Bean_Type</th><th scope=col>Broad_Bean_Origin</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>NA</td><td>NA</td><td>1035.436</td><td>2012.323</td><td>71.70318</td><td>NA</td><td>3.185619</td><td>NA</td><td>NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " Company \\_(Maker-if\\_known) & Specific\\_Bean\\_Origin\\_or\\_Bar\\_Name & REF & Review\\_Date & Cocoa\\_Percent & Company\\_Location & Rating & Bean\\_Type & Broad\\_Bean\\_Origin\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t NA & NA & 1035.436 & 2012.323 & 71.70318 & NA & 3.185619 & NA & NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 9\n",
       "\n",
       "| Company _(Maker-if_known) &lt;dbl&gt; | Specific_Bean_Origin_or_Bar_Name &lt;dbl&gt; | REF &lt;dbl&gt; | Review_Date &lt;dbl&gt; | Cocoa_Percent &lt;dbl&gt; | Company_Location &lt;dbl&gt; | Rating &lt;dbl&gt; | Bean_Type &lt;dbl&gt; | Broad_Bean_Origin &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| NA | NA | 1035.436 | 2012.323 | 71.70318 | NA | 3.185619 | NA | NA |\n",
       "\n"
      ],
      "text/plain": [
       "  Company _(Maker-if_known) Specific_Bean_Origin_or_Bar_Name REF     \n",
       "1 NA                        NA                               1035.436\n",
       "  Review_Date Cocoa_Percent Company_Location Rating   Bean_Type\n",
       "1 2012.323    71.70318      NA               3.185619 NA       \n",
       "  Broad_Bean_Origin\n",
       "1 NA               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# summary function from base R (base R means no packages)\n",
    "summary(chocolateData)\n",
    "\n",
    "# summary function from the Tidyverse (specifically dplyr). To use this function, you need\n",
    "# to tell it what dataset to summarize and also what function to use. In this case I'm\n",
    "# asking for the average using the function mean()\n",
    "summarise_all(chocolateData, funs(mean))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "7210952b",
   "metadata": {
    "_cell_guid": "2fe871ba-8ee1-4d29-b615-ca437108fe39",
    "_uuid": "41cbee4f118b347fa92586bbde279cc745a13603",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:40.725594Z",
     "iopub.status.busy": "2026-05-10T03:48:40.723971Z",
     "iopub.status.idle": "2026-05-10T03:48:40.929466Z",
     "shell.execute_reply": "2026-05-10T03:48:40.926802Z"
    },
    "papermill": {
     "duration": 0.227971,
     "end_time": "2026-05-10T03:48:40.933152",
     "exception": false,
     "start_time": "2026-05-10T03:48:40.705181",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22m`funs()` was deprecated in dplyr 0.8.0.\n",
      "\u001b[36mℹ\u001b[39m Please use a list of either functions or lambdas:\n",
      "\n",
      "# Simple named list: list(mean = mean, median = median)\n",
      "\n",
      "# Auto named with `tibble::lst()`: tibble::lst(mean, median)\n",
      "\n",
      "# Using lambdas list(~ mean(., trim = .2), ~ median(., na.rm = TRUE))”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22mThere were 5 warnings in `summarise()`.\n",
      "The first warning was:\n",
      "\u001b[1m\u001b[22m\u001b[36mℹ\u001b[39m In argument: `Company _(Maker-if_known) = sd(`Company _(Maker-if_known)`)`.\n",
      "Caused by warning in `var()`:\n",
      "\u001b[33m!\u001b[39m NAs introduced by coercion\n",
      "\u001b[1m\u001b[22m\u001b[36mℹ\u001b[39m Run `dplyr::last_dplyr_warnings()` to see the 4 remaining warnings.”\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company _(Maker-if_known)</th><th scope=col>Specific_Bean_Origin_or_Bar_Name</th><th scope=col>REF</th><th scope=col>Review_Date</th><th scope=col>Cocoa_Percent</th><th scope=col>Company_Location</th><th scope=col>Rating</th><th scope=col>Bean_Type</th><th scope=col>Broad_Bean_Origin</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>NA</td><td>NA</td><td>552.6843</td><td>2.926739</td><td>6.321543</td><td>NA</td><td>0.47801</td><td>NA</td><td>NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " Company \\_(Maker-if\\_known) & Specific\\_Bean\\_Origin\\_or\\_Bar\\_Name & REF & Review\\_Date & Cocoa\\_Percent & Company\\_Location & Rating & Bean\\_Type & Broad\\_Bean\\_Origin\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t NA & NA & 552.6843 & 2.926739 & 6.321543 & NA & 0.47801 & NA & NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 9\n",
       "\n",
       "| Company _(Maker-if_known) &lt;dbl&gt; | Specific_Bean_Origin_or_Bar_Name &lt;dbl&gt; | REF &lt;dbl&gt; | Review_Date &lt;dbl&gt; | Cocoa_Percent &lt;dbl&gt; | Company_Location &lt;dbl&gt; | Rating &lt;dbl&gt; | Bean_Type &lt;dbl&gt; | Broad_Bean_Origin &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| NA | NA | 552.6843 | 2.926739 | 6.321543 | NA | 0.47801 | NA | NA |\n",
       "\n"
      ],
      "text/plain": [
       "  Company _(Maker-if_known) Specific_Bean_Origin_or_Bar_Name REF     \n",
       "1 NA                        NA                               552.6843\n",
       "  Review_Date Cocoa_Percent Company_Location Rating  Bean_Type\n",
       "1 2.926739    6.321543      NA               0.47801 NA       \n",
       "  Broad_Bean_Origin\n",
       "1 NA               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# Use the summarise_all() function to find the standard deviation of each numeric column.\n",
    "# The function to find the standard deviation is sd()\n",
    "summarise_all(chocolateData, funs(sd))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0833dbbc",
   "metadata": {
    "_cell_guid": "7efc54a2-e9d2-459e-aa28-b75800a4742d",
    "_uuid": "6a6603668ea4b0d48c74c9aea679acffb47b7fd2",
    "papermill": {
     "duration": 0.008622,
     "end_time": "2026-05-10T03:48:40.950723",
     "exception": false,
     "start_time": "2026-05-10T03:48:40.942101",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Summarizing a specific variable"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3043bfbf",
   "metadata": {
    "_cell_guid": "491e3d58-7734-4180-b2bd-8c636c1339e5",
    "_uuid": "8f3c08ebfbfe1f1d71acaa330c0b743409c7ec85",
    "papermill": {
     "duration": 0.009138,
     "end_time": "2026-05-10T03:48:40.968687",
     "exception": false,
     "start_time": "2026-05-10T03:48:40.959549",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The functions we used above give you an overview of the entire dataset, but often you're only interested in one or two variables. We can look at specific variables really easily using the summarise() function and pipes. Pipes are part of the Tidyverse package we loaded in the beginning: if you try to use them without load in the package, you'll get an error.\n",
    "\n",
    "> A pipe, which looks like this: %>% is a special operator. It takes all the output from the right side and passes it to whatever is on the left side.\n",
    "\n",
    "Let's take our chocolate dataset and then pipe it to the summarise() function. The summarise() function will return a data_frame, where each column contains a specific type of information we've asked for and has a name we've given in. In this example, we're going to get back two columns. One, called \"averageRating\" will have the average of the Rating column in it, while the second, called \"sdRating\" will have the standard deviation of the Rating column in it. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "d7726bdd",
   "metadata": {
    "_cell_guid": "caf7ddb8-30c5-4726-a6bc-1751a7f8a13f",
    "_uuid": "c05960bf031757661d09ff6b9a699e9860e400d4",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:40.990227Z",
     "iopub.status.busy": "2026-05-10T03:48:40.988356Z",
     "iopub.status.idle": "2026-05-10T03:48:41.020159Z",
     "shell.execute_reply": "2026-05-10T03:48:41.017524Z"
    },
    "papermill": {
     "duration": 0.046314,
     "end_time": "2026-05-10T03:48:41.023711",
     "exception": false,
     "start_time": "2026-05-10T03:48:40.977397",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>averageRating</th><th scope=col>sdRating</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>3.185619</td><td>0.47801</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 2\n",
       "\\begin{tabular}{ll}\n",
       " averageRating & sdRating\\\\\n",
       " <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 3.185619 & 0.47801\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 2\n",
       "\n",
       "| averageRating &lt;dbl&gt; | sdRating &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| 3.185619 | 0.47801 |\n",
       "\n"
      ],
      "text/plain": [
       "  averageRating sdRating\n",
       "1 3.185619      0.47801 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# return a data_frame with the mean and sd of the Rating column, from the chocolate\n",
    "# dataset in it\n",
    "chocolateData %>%\n",
    "    summarise(averageRating = mean(Rating),\n",
    "             sdRating = sd(Rating))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "548d813f",
   "metadata": {
    "_cell_guid": "eaf42a2e-e68f-4352-81f5-5652903095c3",
    "_uuid": "ab166489b6f9726793e73b7fc880899ba76f4961",
    "papermill": {
     "duration": 0.009634,
     "end_time": "2026-05-10T03:48:41.042336",
     "exception": false,
     "start_time": "2026-05-10T03:48:41.032702",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> ## Why are there line breaks after \"%>%\" and \"mean(Rating),\" in the code block above?\n",
    "> \n",
    "> So far all the functions we've seen have been all on one line. As we're learning more functions and stringing them together, however, some of our lines are going to get really, really long. Breaking up a line can help make your code easier to read. (Easy to read is good! The person who's most likely to need to read your code in the future is you after you've forgotten everything about about it. Make future you's life a little easier.)\n",
    ">\n",
    "> You can't break a line up just anywhere, though. Lines of code are like lines of text in a book: you can't just start wrap a line anywhere you want.\n",
    ">\n",
    ">> Th\n",
    ">>\n",
    ">>is is p\n",
    ">>\n",
    ">>retty hard t\n",
    ">>\n",
    ">> o read.\n",
    ">\n",
    ">In text, you need to do wrap lines between words, or between syllables of words with a hyphen (-) in between. This lets the reader know that the word continues in the next line. For R, some of the \"hyphens\" that let the computer know that your line continues on the next line are the comma (,), the pipe (%>%) and the plus sign (+), which we'll talk about later. If you split your line directly after one of these characters, R knows to keep looking for the rest of the code one the next line.\n",
    ">\n",
    "> You should also indent any wrapped lines after the first. This isn't necessary, but it makes your code easier to learn.  You can do this either by hitting TAB once, or space four times. (There are a lot of arguments on-line about which is better, but both work.)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "2c9fbc34",
   "metadata": {
    "_cell_guid": "a419e5e2-d32d-4f9b-a7e3-ab303388acab",
    "_uuid": "9f559410ce5888c45d627d14bd6c4e481825b0ee",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:41.064960Z",
     "iopub.status.busy": "2026-05-10T03:48:41.063318Z",
     "iopub.status.idle": "2026-05-10T03:48:41.096960Z",
     "shell.execute_reply": "2026-05-10T03:48:41.094849Z"
    },
    "papermill": {
     "duration": 0.048391,
     "end_time": "2026-05-10T03:48:41.100307",
     "exception": false,
     "start_time": "2026-05-10T03:48:41.051916",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "13"
      ],
      "text/latex": [
       "13"
      ],
      "text/markdown": [
       "13"
      ],
      "text/plain": [
       "[1] 13"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "13"
      ],
      "text/latex": [
       "13"
      ],
      "text/markdown": [
       "13"
      ],
      "text/plain": [
       "[1] 13"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "13"
      ],
      "text/latex": [
       "13"
      ],
      "text/markdown": [
       "13"
      ],
      "text/plain": [
       "[1] 13"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# this is fine! :)\n",
    "mean(c(5,6,25,16))\n",
    "\n",
    "# this is fine! :)\n",
    "mean(c(5,6,\n",
    "       25,16))\n",
    "\n",
    "# this won't break your code, but it's hard to read :(\n",
    "mean(c(5,6,\n",
    "25,16))\n",
    "\n",
    "# this will break your code :'(\n",
    "#mean(c(5,6,2\n",
    "      #5,16))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "4d545458",
   "metadata": {
    "_cell_guid": "2c5ba6af-4645-4d9d-9a59-ce4c67a82dd7",
    "_uuid": "cb3de78e8434e1bfa1168b2df68d0b7e69e19a37",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:41.123029Z",
     "iopub.status.busy": "2026-05-10T03:48:41.121414Z",
     "iopub.status.idle": "2026-05-10T03:48:41.325389Z",
     "shell.execute_reply": "2026-05-10T03:48:41.322771Z"
    },
    "papermill": {
     "duration": 0.219166,
     "end_time": "2026-05-10T03:48:41.328817",
     "exception": false,
     "start_time": "2026-05-10T03:48:41.109651",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22m`funs()` was deprecated in dplyr 0.8.0.\n",
      "\u001b[36mℹ\u001b[39m Please use a list of either functions or lambdas:\n",
      "\n",
      "# Simple named list: list(mean = mean, median = median)\n",
      "\n",
      "# Auto named with `tibble::lst()`: tibble::lst(mean, median)\n",
      "\n",
      "# Using lambdas list(~ mean(., trim = .2), ~ median(., na.rm = TRUE))”\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22mThere were 5 warnings in `summarise()`.\n",
      "The first warning was:\n",
      "\u001b[1m\u001b[22m\u001b[36mℹ\u001b[39m In argument: `Company _(Maker-if_known) = sd(`Company _(Maker-if_known)`)`.\n",
      "Caused by warning in `var()`:\n",
      "\u001b[33m!\u001b[39m NAs introduced by coercion\n",
      "\u001b[1m\u001b[22m\u001b[36mℹ\u001b[39m Run `dplyr::last_dplyr_warnings()` to see the 4 remaining warnings.”\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company _(Maker-if_known)</th><th scope=col>Specific_Bean_Origin_or_Bar_Name</th><th scope=col>REF</th><th scope=col>Review_Date</th><th scope=col>Cocoa_Percent</th><th scope=col>Company_Location</th><th scope=col>Rating</th><th scope=col>Bean_Type</th><th scope=col>Broad_Bean_Origin</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>NA</td><td>NA</td><td>552.6843</td><td>2.926739</td><td>6.321543</td><td>NA</td><td>0.47801</td><td>NA</td><td>NA</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " Company \\_(Maker-if\\_known) & Specific\\_Bean\\_Origin\\_or\\_Bar\\_Name & REF & Review\\_Date & Cocoa\\_Percent & Company\\_Location & Rating & Bean\\_Type & Broad\\_Bean\\_Origin\\\\\n",
       " <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t NA & NA & 552.6843 & 2.926739 & 6.321543 & NA & 0.47801 & NA & NA\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 9\n",
       "\n",
       "| Company _(Maker-if_known) &lt;dbl&gt; | Specific_Bean_Origin_or_Bar_Name &lt;dbl&gt; | REF &lt;dbl&gt; | Review_Date &lt;dbl&gt; | Cocoa_Percent &lt;dbl&gt; | Company_Location &lt;dbl&gt; | Rating &lt;dbl&gt; | Bean_Type &lt;dbl&gt; | Broad_Bean_Origin &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| NA | NA | 552.6843 | 2.926739 | 6.321543 | NA | 0.47801 | NA | NA |\n",
       "\n"
      ],
      "text/plain": [
       "  Company _(Maker-if_known) Specific_Bean_Origin_or_Bar_Name REF     \n",
       "1 NA                        NA                               552.6843\n",
       "  Review_Date Cocoa_Percent Company_Location Rating  Bean_Type\n",
       "1 2.926739    6.321543      NA               0.47801 NA       \n",
       "  Broad_Bean_Origin\n",
       "1 NA               "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# Can you use a pipe (%>%) and the summarise() function return a dataframe\n",
    "# with the average and sd of the Cocoa_Percent column? You can name the new columns\n",
    "# whatever you'd like, but keep in mind that clear names are the most helpful.\n",
    "summarise_all(chocolateData, funs(sd))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fa1542dd",
   "metadata": {
    "_cell_guid": "a213b61f-2e03-47b8-9c1f-b69d7f6b714e",
    "_uuid": "f731784238476e5474ae129e860bf037e860123c",
    "papermill": {
     "duration": 0.009479,
     "end_time": "2026-05-10T03:48:41.348126",
     "exception": false,
     "start_time": "2026-05-10T03:48:41.338647",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Summarize a specific variable by group"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e56c3ed5",
   "metadata": {
    "_cell_guid": "e691bd6d-163f-4395-b77a-dd98bd3faed0",
    "_uuid": "0adbbbb91fadc1e389a32ac13b37b34ea4cfc556",
    "papermill": {
     "duration": 0.009524,
     "end_time": "2026-05-10T03:48:41.367211",
     "exception": false,
     "start_time": "2026-05-10T03:48:41.357687",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "At first pass, it may seem a bit silly to do things like calculate the mean and standard deviation this way. You can see why this is such a power technique, however, when we look at the the same variable across groups. \n",
    "\n",
    "We can use this with a hand function called group_by(). When you pipe a dataset into the group_by() function and tell it the name of a specific column, then it will look at all the values in that column and group together all the rows that have the same value in a given column. Then, when you pipe that data into the summarise() function, it will return the values you asked for for each group separately. Like so:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "ec34c96c",
   "metadata": {
    "_cell_guid": "e8df8de7-7a38-48d5-b032-e7d5c0860939",
    "_uuid": "9ccb1d25051915b774e9351b8ff9b76156053e4e",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:41.390120Z",
     "iopub.status.busy": "2026-05-10T03:48:41.388413Z",
     "iopub.status.idle": "2026-05-10T03:48:41.432992Z",
     "shell.execute_reply": "2026-05-10T03:48:41.430300Z"
    },
    "papermill": {
     "duration": 0.059683,
     "end_time": "2026-05-10T03:48:41.436456",
     "exception": false,
     "start_time": "2026-05-10T03:48:41.376773",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 12 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Review_Date</th><th scope=col>averageRating</th><th scope=col>sdRating</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2006</td><td>3.125000</td><td>0.7691224</td></tr>\n",
       "\t<tr><td>2007</td><td>3.162338</td><td>0.6998193</td></tr>\n",
       "\t<tr><td>2008</td><td>2.994624</td><td>0.5442118</td></tr>\n",
       "\t<tr><td>2009</td><td>3.073171</td><td>0.4591195</td></tr>\n",
       "\t<tr><td>2010</td><td>3.148649</td><td>0.4663426</td></tr>\n",
       "\t<tr><td>2011</td><td>3.256061</td><td>0.4899536</td></tr>\n",
       "\t<tr><td>2012</td><td>3.178205</td><td>0.4835962</td></tr>\n",
       "\t<tr><td>2013</td><td>3.197011</td><td>0.4461178</td></tr>\n",
       "\t<tr><td>2014</td><td>3.189271</td><td>0.4148615</td></tr>\n",
       "\t<tr><td>2015</td><td>3.246491</td><td>0.3810960</td></tr>\n",
       "\t<tr><td>2016</td><td>3.223624</td><td>0.4200386</td></tr>\n",
       "\t<tr><td>2017</td><td>3.312500</td><td>0.3317444</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 12 × 3\n",
       "\\begin{tabular}{lll}\n",
       " Review\\_Date & averageRating & sdRating\\\\\n",
       " <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 2006 & 3.125000 & 0.7691224\\\\\n",
       "\t 2007 & 3.162338 & 0.6998193\\\\\n",
       "\t 2008 & 2.994624 & 0.5442118\\\\\n",
       "\t 2009 & 3.073171 & 0.4591195\\\\\n",
       "\t 2010 & 3.148649 & 0.4663426\\\\\n",
       "\t 2011 & 3.256061 & 0.4899536\\\\\n",
       "\t 2012 & 3.178205 & 0.4835962\\\\\n",
       "\t 2013 & 3.197011 & 0.4461178\\\\\n",
       "\t 2014 & 3.189271 & 0.4148615\\\\\n",
       "\t 2015 & 3.246491 & 0.3810960\\\\\n",
       "\t 2016 & 3.223624 & 0.4200386\\\\\n",
       "\t 2017 & 3.312500 & 0.3317444\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 12 × 3\n",
       "\n",
       "| Review_Date &lt;dbl&gt; | averageRating &lt;dbl&gt; | sdRating &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| 2006 | 3.125000 | 0.7691224 |\n",
       "| 2007 | 3.162338 | 0.6998193 |\n",
       "| 2008 | 2.994624 | 0.5442118 |\n",
       "| 2009 | 3.073171 | 0.4591195 |\n",
       "| 2010 | 3.148649 | 0.4663426 |\n",
       "| 2011 | 3.256061 | 0.4899536 |\n",
       "| 2012 | 3.178205 | 0.4835962 |\n",
       "| 2013 | 3.197011 | 0.4461178 |\n",
       "| 2014 | 3.189271 | 0.4148615 |\n",
       "| 2015 | 3.246491 | 0.3810960 |\n",
       "| 2016 | 3.223624 | 0.4200386 |\n",
       "| 2017 | 3.312500 | 0.3317444 |\n",
       "\n"
      ],
      "text/plain": [
       "   Review_Date averageRating sdRating \n",
       "1  2006        3.125000      0.7691224\n",
       "2  2007        3.162338      0.6998193\n",
       "3  2008        2.994624      0.5442118\n",
       "4  2009        3.073171      0.4591195\n",
       "5  2010        3.148649      0.4663426\n",
       "6  2011        3.256061      0.4899536\n",
       "7  2012        3.178205      0.4835962\n",
       "8  2013        3.197011      0.4461178\n",
       "9  2014        3.189271      0.4148615\n",
       "10 2015        3.246491      0.3810960\n",
       "11 2016        3.223624      0.4200386\n",
       "12 2017        3.312500      0.3317444"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Return the average and sd of ratings by the year a rating was given\n",
    "chocolateData %>%\n",
    "    group_by(Review_Date) %>%\n",
    "    summarise(averageRating = mean(Rating),\n",
    "             sdRating = sd(Rating))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "8f97603e",
   "metadata": {
    "_cell_guid": "97d3046a-a25a-416d-8250-781b32bfa0ae",
    "_uuid": "e70ab542d83262785ba0b7a70cbd4e2135ebea94",
    "execution": {
     "iopub.execute_input": "2026-05-10T03:48:41.460221Z",
     "iopub.status.busy": "2026-05-10T03:48:41.458543Z",
     "iopub.status.idle": "2026-05-10T03:48:41.495231Z",
     "shell.execute_reply": "2026-05-10T03:48:41.492541Z"
    },
    "papermill": {
     "duration": 0.052043,
     "end_time": "2026-05-10T03:48:41.498626",
     "exception": false,
     "start_time": "2026-05-10T03:48:41.446583",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>averageCocoaPercent</th><th scope=col>sdCocoaPercent</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>71.70318</td><td>6.321543</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 2\n",
       "\\begin{tabular}{ll}\n",
       " averageCocoaPercent & sdCocoaPercent\\\\\n",
       " <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 71.70318 & 6.321543\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 2\n",
       "\n",
       "| averageCocoaPercent &lt;dbl&gt; | sdCocoaPercent &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| 71.70318 | 6.321543 |\n",
       "\n"
      ],
      "text/plain": [
       "  averageCocoaPercent sdCocoaPercent\n",
       "1 71.70318            6.321543      "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# Can you return a data_frame with the average and sd Cocoa_Percent by the year the reviews \n",
    "# were written?\n",
    "chocolateData %>%\n",
    "    summarise(averageCocoaPercent = mean(Cocoa_Percent, na.rm = TRUE),\n",
    "              sdCocoaPercent = sd(Cocoa_Percent, na.rm = TRUE))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6dd615a1",
   "metadata": {
    "_cell_guid": "d9178109-2442-4427-b3ed-913694a8ff99",
    "_uuid": "27a0c1e956dba16f53dcecd8ac2235120aeccf26",
    "papermill": {
     "duration": 0.010013,
     "end_time": "2026-05-10T03:48:41.519011",
     "exception": false,
     "start_time": "2026-05-10T03:48:41.508998",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "This is a really efficient way to start understanding your data. For example, it looks like chocolate bar ratings might be trending slightly upwards by year. In the mid 2000's they were around 3.0, and now they're closer to 3.3.\n",
    "\n",
    "To really get a better understanding of this, however, I really want to want to graph this data so that I can see if there's been reliable change over time. So let's move on to the final part of this tutorial: graphing!"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4d4c6a42",
   "metadata": {
    "_cell_guid": "88f612a3-3519-4d2e-a533-097191bda6fc",
    "_uuid": "ebf4ff75164b5479ae1444d329caee1fa2a75287",
    "papermill": {
     "duration": 0.010211,
     "end_time": "2026-05-10T03:48:41.539620",
     "exception": false,
     "start_time": "2026-05-10T03:48:41.529409",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Next step: [Graphing Data](https://www.kaggle.com/rtatman/getting-started-in-r-graphing-data/)"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "databundleVersionId": 3310,
     "datasetId": 1919,
     "sourceId": 3310,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 31330,
   "isGpuEnabled": false,
   "isInternetEnabled": false,
   "language": "r",
   "sourceType": "notebook"
  },
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
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 6.999942,
   "end_time": "2026-05-10T03:48:41.672803",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2026-05-10T03:48:34.672861",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
