INSERT INTO public.questionnaire_model(id, label, model) VALUES('simpsons', 'Questionnaire about the Simpsons tv show', '
{
  "id": "i6vwi0",
  "label": "Questionnaire SIMPSONS",
  "components": [
    {
      "id": "j6p0ti5h",
      "componentType": "Sequence",
      "label": "\"I - Introduction\"",
      "declarations": [
        {
          "id": "j6p0ti5h-d1",
          "declarationType": "COMMENT",
          "position": "AFTER_QUESTION_TEXT",
          "label": "\"We''re going to test your knowledge about the simpsons series.Welcome in the simspons world!\""
        }
      ],
      "conditionFilter": "\"normal\""
    },

    {
      "id": "j6p3dkx6",
      "componentType": "Textarea",
      "mandatory": false,
      "maxLength": 500,
      "label": "\"➡ 1. Before starting, do you have any comments about the Simpsons family?\"",
      "conditionFilter": "\"normal\"",
      "response": {
        "name": "COMMENT",
        "valueState": [
          { "valueType": "PREVIOUS", "value": null },

          { "valueType": "COLLECTED", "value": null },

          { "valueType": "FORCED", "value": null },

          { "valueType": "EDITED", "value": null },

          { "valueType": "INPUTED", "value": null }
        ]
      }
    },

    {
      "id": "j6p0np9q",
      "componentType": "CheckboxBoolean",
      "mandatory": false,
      "label": "\"➡ 2. Are you ready?\"",
      "conditionFilter": "\"normal\"",
      "response": {
        "name": "READY",
        "valueState": [
          { "valueType": "PREVIOUS", "value": null },

          { "valueType": "COLLECTED", "value": null },

          { "valueType": "FORCED", "value": null },

          { "valueType": "EDITED", "value": null },

          { "valueType": "INPUTED", "value": null }
        ]
      }
    },

    {
      "id": "j6p0s7o5",
      "componentType": "Subsequence",
      "label": "\"General knowledge of the series\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\""
    },

    {
      "id": "j3343qhx",
      "componentType": "Input",
      "mandatory": false,
      "maxLength": 30,
      "label": "\"➡ 3. Who is the producer?\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "response": {
        "name": "PRODUCER",
        "valueState": [
          { "valueType": "PREVIOUS", "value": null },

          { "valueType": "COLLECTED", "value": null },

          { "valueType": "FORCED", "value": null },

          { "valueType": "EDITED", "value": null },

          { "valueType": "INPUTED", "value": null }
        ]
      }
    },

    {
      "id": "j6q9h8tj",
      "componentType": "InputNumber",
      "mandatory": false,
      "min": 0,
      "max": 99,
      "decimals": 0,
      "label": "\"➡ 4. What is the current season number?\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "response": {
        "name": "SEASON_NUMBER",
        "valueState": [
          { "valueType": "PREVIOUS", "value": null },

          { "valueType": "COLLECTED", "value": null },

          { "valueType": "FORCED", "value": null },

          { "valueType": "EDITED", "value": null },

          { "valueType": "INPUTED", "value": null }
        ]
      }
    },

    {
      "id": "j334cyqb",
      "componentType": "Datepicker",
      "mandatory": false,
      "label": "\"➡ 5. When was the first episode of the Simpsons?\"",
      "declarations": [
        {
          "id": "j334cyqb-d11",
          "declarationType": "COMMENT",
          "position": "AFTER_QUESTION_TEXT",
          "label": "\"For your information, the date of the last broadcast was on \" || cast(cast(LAST_BROADCAST,string),string) || \" \""
        }
      ],
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "response": {
        "name": "DATEFIRST",
        "valueState": [
          { "valueType": "PREVIOUS", "value": null },

          { "valueType": "COLLECTED", "value": null },

          { "valueType": "FORCED", "value": null },

          { "valueType": "EDITED", "value": null },

          { "valueType": "INPUTED", "value": null }
        ]
      },
      "dateFormat": "YYYY-MM-DD"
    },

    {
      "id": "j6z06z1e",
      "componentType": "InputNumber",
      "mandatory": false,
      "min": 0,
      "max": 99,
      "decimals": 1,
      "label": "\"➡ 6. In your opinion, how much is the part of audience share in US for the 2016 season?\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "response": {
        "name": "AUDIENCE_SHARE",
        "valueState": [
          { "valueType": "PREVIOUS", "value": null },

          { "valueType": "COLLECTED", "value": null },

          { "valueType": "FORCED", "value": null },

          { "valueType": "EDITED", "value": null },

          { "valueType": "INPUTED", "value": null }
        ]
      }
    },

    {
      "id": "j3341528",
      "componentType": "Sequence",
      "label": "\"II - Simpsons'' city\"",
      "declarations": [
        {
          "id": "j3341528-d2",
          "declarationType": "COMMENT",
          "position": "AFTER_QUESTION_TEXT",
          "label": "\"This module asks about your general knowledge of the Simpsons city\""
        }
      ],
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\""
    },

    {
      "id": "j6qdfhvw",
      "componentType": "CheckboxOne",
      "mandatory": false,
      "label": "\"➡ 2. Who is the Simpsons city mayor?\"",
      "declarations": [
        {
          "id": "j6qdfhvw-d4",
          "declarationType": "INSTRUCTION",
          "position": "AFTER_QUESTION_TEXT",
          "label": "\"Only one possible answer\""
        }
      ],
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "response": {
        "name": "MAYOR",
        "valueState": [
          { "valueType": "PREVIOUS", "value": null },

          { "valueType": "COLLECTED", "value": null },

          { "valueType": "FORCED", "value": null },

          { "valueType": "EDITED", "value": null },

          { "valueType": "INPUTED", "value": null }
        ]
      },
      "options": [
        { "value": "1", "label": "Constance Harm" },

        { "value": "2", "label": "Timothy Lovejoy" },

        { "value": "3", "label": "Joe Quimby" },

        { "value": "4", "label": "Poochie" }
      ]
    },

    {
      "id": "j4nw5cqz",
      "componentType": "Dropdown",
      "mandatory": false,
      "label": "\"➡ 3. In which state do The Simpsons reside?\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "response": {
        "name": "STATE",
        "valueState": [
          { "valueType": "PREVIOUS", "value": null },

          { "valueType": "COLLECTED", "value": null },

          { "valueType": "FORCED", "value": null },

          { "valueType": "EDITED", "value": null },

          { "valueType": "INPUTED", "value": null }
        ]
      },
      "options": [
        { "value": "1", "label": "Washington" },

        { "value": "2", "label": "Kentucky" },

        { "value": "3", "label": "Ohio" },

        { "value": "4", "label": "Maine" },

        { "value": "5", "label": "North Dakota" },

        { "value": "6", "label": "Florida" },

        { "value": "7", "label": "North Takoma" },

        { "value": "8", "label": "California" },

        { "value": "9", "label": "Texas" },

        { "value": "10", "label": "Massachusetts" },

        { "value": "11", "label": "Nevada" },

        { "value": "12", "label": "Illinois" },

        { "value": "13", "label": "Not in any state, you fool!" }
      ]
    },

    {
      "id": "j6qe0h9q",
      "componentType": "Sequence",
      "label": "\"III - Characters\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\""
    },

    {
      "id": "j334akov",
      "componentType": "CheckboxGroup",
      "label": "\"➡ 1. What are the pet names that the Simpsons family had?\"",
      "declarations": [
        {
          "id": "j334akov-d5",
          "declarationType": "INSTRUCTION",
          "position": "AFTER_QUESTION_TEXT",
          "label": "\"Several possible answers\""
        }
      ],
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "responses": [
        {
          "id": "j334akov-QOP-jbgd8qmn",
          "label": "Santa''s Little Helper",
          "response": {
            "name": "PET1",
            "valueState": [
              { "valueType": "PREVIOUS", "value": null },

              { "valueType": "COLLECTED", "value": null },

              { "valueType": "FORCED", "value": null },

              { "valueType": "EDITED", "value": null },

              { "valueType": "INPUTED", "value": null }
            ]
          }
        },

        {
          "id": "j334akov-QOP-jbgd60vl",
          "label": "Snowball I",
          "response": {
            "name": "PET2",
            "valueState": [
              { "valueType": "PREVIOUS", "value": null },

              { "valueType": "COLLECTED", "value": null },

              { "valueType": "FORCED", "value": null },

              { "valueType": "EDITED", "value": null },

              { "valueType": "INPUTED", "value": null }
            ]
          }
        },

        {
          "id": "j334akov-QOP-jbgda2jo",
          "label": "Coltrane",
          "response": {
            "name": "PET3",
            "valueState": [
              { "valueType": "PREVIOUS", "value": null },

              { "valueType": "COLLECTED", "value": null },

              { "valueType": "FORCED", "value": null },

              { "valueType": "EDITED", "value": null },

              { "valueType": "INPUTED", "value": null }
            ]
          }
        },

        {
          "id": "j334akov-QOP-jbgdfssy",
          "label": "Mojo the Helper Monkey",
          "response": {
            "name": "PET4",
            "valueState": [
              { "valueType": "PREVIOUS", "value": null },

              { "valueType": "COLLECTED", "value": null },

              { "valueType": "FORCED", "value": null },

              { "valueType": "EDITED", "value": null },

              { "valueType": "INPUTED", "value": null }
            ]
          }
        }
      ]
    },

    {
      "id": "j6p29i81",
      "componentType": "Table",
      "mandatory": false,
      "positioning": "HORIZONTAL",
      "label": "\"➡ 2. Does Jay like the following ice cream flavours?\"",
      "declarations": [
        {
          "id": "d12-SI",
          "declarationType": "STATEMENT",
          "position": "BEFORE_QUESTION_TEXT",
          "label": "\"Now we are going to know if you think that Jay is a gluton.\""
        }
      ],
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "cells": [
        [
          { "label": "Vanilla", "value": "1" },

          {
            "componentType": "Radio",
            "id": "j6p29i81-QOP-jbgdb3jx",
            "response": {
              "name": "ICE_FLAVOUR1",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Yes" },

              { "value": "0", "label": "No" }
            ]
          }
        ],

        [
          { "label": "Strawberry", "value": "2" },

          {
            "componentType": "Radio",
            "id": "j6p29i81-QOP-jbgdb61k",
            "response": {
              "name": "ICE_FLAVOUR2",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Yes" },

              { "value": "0", "label": "No" }
            ]
          }
        ],

        [
          { "label": "Apple", "value": "3" },

          {
            "componentType": "Radio",
            "id": "j6p29i81-QOP-jbgdl3kc",
            "response": {
              "name": "ICE_FLAVOUR3",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Yes" },

              { "value": "0", "label": "No" }
            ]
          }
        ],

        [
          { "label": "Bacon", "value": "4" },

          {
            "componentType": "Radio",
            "id": "j6p29i81-QOP-jbgdcobo",
            "response": {
              "name": "ICE_FLAVOUR4",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Yes" },

              { "value": "0", "label": "No" }
            ]
          }
        ]
      ]
    },

    {
      "id": "j6qefnga",
      "componentType": "Table",
      "mandatory": false,
      "positioning": "HORIZONTAL",
      "label": "\"➡ 3. Which character works in the nuclear power plant?\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "cells": [
        [
          { "label": "Charles Montgomery Burns", "value": "1" },

          {
            "componentType": "Dropdown",
            "id": "j6qefnga-QOP-jbgd6p0k",
            "response": {
              "name": "NUCLEAR_CHARACTER1",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Yes" },

              { "value": "0", "label": "No" }
            ]
          }
        ],

        [
          { "label": "Carl Carlson", "value": "2" },

          {
            "componentType": "Dropdown",
            "id": "j6qefnga-QOP-jbgd9ato",
            "response": {
              "name": "NUCLEAR_CHARACTER2",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Yes" },

              { "value": "0", "label": "No" }
            ]
          }
        ],

        [
          { "label": "Otto Mann", "value": "3" },

          {
            "componentType": "Dropdown",
            "id": "j6qefnga-QOP-jbgd3e0p",
            "response": {
              "name": "NUCLEAR_CHARACTER3",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Yes" },

              { "value": "0", "label": "No" }
            ]
          }
        ],

        [
          { "label": "Carl Carlson", "value": "4" },

          {
            "componentType": "Dropdown",
            "id": "j6qefnga-QOP-jbgdkxne",
            "response": {
              "name": "NUCLEAR_CHARACTER4",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Yes" },

              { "value": "0", "label": "No" }
            ]
          }
        ]
      ]
    },

    {
      "id": "j6yzoc6g",
      "componentType": "Table",
      "mandatory": false,
      "positioning": "HORIZONTAL",
      "label": "\"➡ 4. In which city each character was born?\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "cells": [
        [
          { "label": "Selma Bouvier", "value": "1" },

          {
            "componentType": "CheckboxOne",
            "id": "j6yzoc6g-QOP-jbgd7fr6",
            "response": {
              "name": "BIRTH_CHARACTER1",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Albuquerque" },

              { "value": "2", "label": "Springfield" },

              { "value": "3", "label": "Portland" },

              { "value": "4", "label": "Shelbyville" },

              { "value": "5", "label": "Dagstuhl" }
            ]
          }
        ],

        [
          { "label": "Kent Brockman", "value": "2" },

          {
            "componentType": "CheckboxOne",
            "id": "j6yzoc6g-QOP-jbgd5e9f",
            "response": {
              "name": "BIRTH_CHARACTER2",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Albuquerque" },

              { "value": "2", "label": "Springfield" },

              { "value": "3", "label": "Portland" },

              { "value": "4", "label": "Shelbyville" },

              { "value": "5", "label": "Dagstuhl" }
            ]
          }
        ],

        [
          { "label": "Milhouse Van Houten", "value": "3" },

          {
            "componentType": "CheckboxOne",
            "id": "j6yzoc6g-QOP-jbgd912x",
            "response": {
              "name": "BIRTH_CHARACTER3",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Albuquerque" },

              { "value": "2", "label": "Springfield" },

              { "value": "3", "label": "Portland" },

              { "value": "4", "label": "Shelbyville" },

              { "value": "5", "label": "Dagstuhl" }
            ]
          }
        ],

        [
          { "label": "Nelson Muntz", "value": "4" },

          {
            "componentType": "CheckboxOne",
            "id": "j6yzoc6g-QOP-jbgd6bdy",
            "response": {
              "name": "BIRTH_CHARACTER4",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Albuquerque" },

              { "value": "2", "label": "Springfield" },

              { "value": "3", "label": "Portland" },

              { "value": "4", "label": "Shelbyville" },

              { "value": "5", "label": "Dagstuhl" }
            ]
          }
        ],

        [
          { "label": "Crazy Cat Lady", "value": "5" },

          {
            "componentType": "CheckboxOne",
            "id": "j6yzoc6g-QOP-jbgddyry",
            "response": {
              "name": "BIRTH_CHARACTER5",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Albuquerque" },

              { "value": "2", "label": "Springfield" },

              { "value": "3", "label": "Portland" },

              { "value": "4", "label": "Shelbyville" },

              { "value": "5", "label": "Dagstuhl" }
            ]
          }
        ]
      ]
    },

    {
      "id": "j4nw88h2",
      "componentType": "Sequence",
      "label": "\"IV - General questions\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\""
    },

    {
      "id": "j6qe237q",
      "componentType": "Subsequence",
      "label": "\"Kwik-E-Mart\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\""
    },

    {
      "id": "j4nwc63q",
      "componentType": "Table",
      "mandatory": false,
      "positioning": "HORIZONTAL",
      "label": "\"➡ 1. Please, specify the percentage of Jay''s expenses in the Kwik-E-Mart for each product?\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "cells": [
        [
          { "headerCell": true, "colspan": 2, "label": "" },

          { "headerCell": true, "label": "Percentage" }
        ],

        [
          { "rowspan": 2, "label": "Frozen products", "value": "A" },

          { "label": "Ice creams", "value": "A1" },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 100,
            "decimals": 1,
            "id": "j4nwc63q-QOP-jbgde5yl",
            "unit": "%",
            "response": {
              "name": "PERCENTAGE_EXPENSES11",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "label": "Jasper Beardly", "value": "A2" },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 100,
            "decimals": 1,
            "id": "j4nwc63q-QOP-jbgd2x2t",
            "unit": "%",
            "response": {
              "name": "PERCENTAGE_EXPENSES21",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "rowspan": 3, "label": "Meat", "value": "B" },

          { "label": "Bacon", "value": "B1" },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 100,
            "decimals": 1,
            "id": "j4nwc63q-QOP-jbgdjypz",
            "unit": "%",
            "response": {
              "name": "PERCENTAGE_EXPENSES31",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "label": "Pork chop", "value": "B2" },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 100,
            "decimals": 1,
            "id": "j4nwc63q-QOP-jbgdcftu",
            "unit": "%",
            "response": {
              "name": "PERCENTAGE_EXPENSES41",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "label": "Chicken", "value": "B3" },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 100,
            "decimals": 1,
            "id": "j4nwc63q-QOP-jbgdiyfe",
            "unit": "%",
            "response": {
              "name": "PERCENTAGE_EXPENSES51",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "label": "Compote", "value": "C" },

          { "label": "Powersauce", "value": "C1" },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 100,
            "decimals": 1,
            "id": "j4nwc63q-QOP-jbgdj1wd",
            "unit": "%",
            "response": {
              "name": "PERCENTAGE_EXPENSES61",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "colspan": 2, "label": "Other", "value": "D" },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 100,
            "decimals": 1,
            "id": "j4nwc63q-QOP-jbgddylk",
            "unit": "%",
            "response": {
              "name": "PERCENTAGE_EXPENSES71",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ]
      ]
    },

    {
      "id": "j6qejudb",
      "componentType": "Subsequence",
      "label": "\"Clowning\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\""
    },

    {
      "id": "j4nw0rr6",
      "componentType": "Table",
      "mandatory": false,
      "positioning": "HORIZONTAL",
      "label": "\"➡ 2. Who did these clownings and tell us what you remember?\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "cells": [
        [
          { "headerCell": true, "label": "" },

          { "headerCell": true, "label": "Clowning" },

          { "headerCell": true, "label": "Remember?" }
        ],

        [
          { "label": "Break the windows of the whole city", "value": "1" },

          {
            "componentType": "Dropdown",
            "id": "j4nw0rr6-QOP-jbgd8tyr",
            "response": {
              "name": "CLOWNING11",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Jay" },

              { "value": "2", "label": "Bart" },

              { "value": "3", "label": "Krusty the clown" },

              { "value": "4", "label": "Maggie" }
            ]
          },

          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j4nw0rr6-QOP-jbgdit3o",
            "response": {
              "name": "CLOWNING12",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "label": "Loose the violin of his daughter playing poker", "value": "2" },

          {
            "componentType": "Dropdown",
            "id": "j4nw0rr6-QOP-jbgdep36",
            "response": {
              "name": "CLOWNING21",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Jay" },

              { "value": "2", "label": "Bart" },

              { "value": "3", "label": "Krusty the clown" },

              { "value": "4", "label": "Maggie" }
            ]
          },

          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j4nw0rr6-QOP-jbgd366k",
            "response": {
              "name": "CLOWNING22",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "label": "Kill Mr Burns", "value": "3" },

          {
            "componentType": "Dropdown",
            "id": "j4nw0rr6-QOP-jbgdjjgi",
            "response": {
              "name": "CLOWNING31",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Jay" },

              { "value": "2", "label": "Bart" },

              { "value": "3", "label": "Krusty the clown" },

              { "value": "4", "label": "Maggie" }
            ]
          },

          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j4nw0rr6-QOP-jbgdax06",
            "response": {
              "name": "CLOWNING32",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "label": "Leaving a mechanical object to control the nuclear power plant",
            "value": "4"
          },

          {
            "componentType": "Dropdown",
            "id": "j4nw0rr6-QOP-jbgdgh6k",
            "response": {
              "name": "CLOWNING41",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            },
            "options": [
              { "value": "1", "label": "Jay" },

              { "value": "2", "label": "Bart" },

              { "value": "3", "label": "Krusty the clown" },

              { "value": "4", "label": "Maggie" }
            ]
          },

          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j4nw0rr6-QOP-jbgdfo1j",
            "response": {
              "name": "CLOWNING42",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ]
      ]
    },

    {
      "id": "j6qeh91y",
      "componentType": "Subsequence",
      "label": "\"Transport\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\""
    },

    {
      "id": "j6p2lwuj",
      "componentType": "Table",
      "mandatory": false,
      "positioning": "HORIZONTAL",
      "label": "\"➡ 3. Which of the following means of transport were used by the hero and in which country?\"",
      "declarations": [
        {
          "id": "j6p2lwuj-d10",
          "declarationType": "INSTRUCTION",
          "position": "AFTER_QUESTION_TEXT",
          "label": "\"Several answers possible: check off all the relevant boxes\""
        }
      ],
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "cells": [
        [
          { "headerCell": true, "label": "" },

          { "headerCell": true, "label": "Brazil" },

          { "headerCell": true, "label": "Canada" },

          { "headerCell": true, "label": "Japan" },

          { "headerCell": true, "label": "France" },

          { "headerCell": true, "label": "Other country" },

          { "headerCell": true, "label": "Other planet" }
        ],

        [
          { "label": "Car", "value": "1" },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgd92mb",
            "response": {
              "name": "TRAVEL11",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdnxkt",
            "response": {
              "name": "TRAVEL12",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdcppc",
            "response": {
              "name": "TRAVEL13",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgd4r2a",
            "response": {
              "name": "TRAVEL14",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgd9cff",
            "response": {
              "name": "TRAVEL15",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdiva0",
            "response": {
              "name": "TRAVEL16",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "label": "Bike", "value": "2" },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdgsat",
            "response": {
              "name": "TRAVEL21",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgd3ef5",
            "response": {
              "name": "TRAVEL22",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgd4cm6",
            "response": {
              "name": "TRAVEL23",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdkfpq",
            "response": {
              "name": "TRAVEL24",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgddwsp",
            "response": {
              "name": "TRAVEL25",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgd7dqf",
            "response": {
              "name": "TRAVEL26",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "label": "Skateboard", "value": "3" },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdaxk2",
            "response": {
              "name": "TRAVEL31",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgd8p1v",
            "response": {
              "name": "TRAVEL32",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdd2lo",
            "response": {
              "name": "TRAVEL33",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgd7u52",
            "response": {
              "name": "TRAVEL34",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdncn8",
            "response": {
              "name": "TRAVEL35",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdnous",
            "response": {
              "name": "TRAVEL36",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          { "label": "Plane", "value": "4" },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgd7myn",
            "response": {
              "name": "TRAVEL41",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdgm0c",
            "response": {
              "name": "TRAVEL42",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdo0ay",
            "response": {
              "name": "TRAVEL43",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdgfwl",
            "response": {
              "name": "TRAVEL44",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdnz6b",
            "response": {
              "name": "TRAVEL45",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "CheckboxBoolean",
            "id": "j6p2lwuj-QOP-jbgdkfcz",
            "response": {
              "name": "TRAVEL46",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ]
      ]
    },

    {
      "id": "j6qfx9qe",
      "componentType": "Sequence",
      "label": "\"V - Favourite characters\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\""
    },

    {
      "id": "j6qg8rc6",
      "componentType": "Table",
      "mandatory": false,
      "positioning": "HORIZONTAL",
      "label": "\"➡ 1. Please, complete the following grid with your favourite characters\"",
      "conditionFilter": "if ((not( cast(READY,integer) <> 1) )) then \"normal\" else \"hidden\"",
      "cells": [
        [
          { "headerCell": true, "label": "Name" },

          { "headerCell": true, "label": "Age" }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgdl5jb",
            "response": {
              "name": "FAVOURITE_CHARACTERS11",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgdfndq",
            "response": {
              "name": "FAVOURITE_CHARACTERS12",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgd8lwo",
            "response": {
              "name": "FAVOURITE_CHARACTERS21",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgd7osi",
            "response": {
              "name": "FAVOURITE_CHARACTERS22",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgdbfag",
            "response": {
              "name": "FAVOURITE_CHARACTERS31",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgd7bnw",
            "response": {
              "name": "FAVOURITE_CHARACTERS32",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgdlgja",
            "response": {
              "name": "FAVOURITE_CHARACTERS41",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgd9k71",
            "response": {
              "name": "FAVOURITE_CHARACTERS42",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgd745y",
            "response": {
              "name": "FAVOURITE_CHARACTERS51",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgdimks",
            "response": {
              "name": "FAVOURITE_CHARACTERS52",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgdjkts",
            "response": {
              "name": "FAVOURITE_CHARACTERS61",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgdjquz",
            "response": {
              "name": "FAVOURITE_CHARACTERS62",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgdcax7",
            "response": {
              "name": "FAVOURITE_CHARACTERS71",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgdd2w3",
            "response": {
              "name": "FAVOURITE_CHARACTERS72",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgdjye1",
            "response": {
              "name": "FAVOURITE_CHARACTERS81",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgdkosc",
            "response": {
              "name": "FAVOURITE_CHARACTERS82",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgd5jet",
            "response": {
              "name": "FAVOURITE_CHARACTERS91",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgdk0x4",
            "response": {
              "name": "FAVOURITE_CHARACTERS92",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ],

        [
          {
            "componentType": "Textarea",
            "maxLength": 255,
            "id": "j6qg8rc6-QOP-jbgdjw90",
            "response": {
              "name": "FAVOURITE_CHARACTERS101",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          },

          {
            "componentType": "InputNumber",
            "min": 0,
            "max": 120,
            "decimals": 0,
            "id": "j6qg8rc6-QOP-jbgd2wgf",
            "response": {
              "name": "FAVOURITE_CHARACTERS102",
              "valueState": [
                { "valueType": "PREVIOUS", "value": null },

                { "valueType": "COLLECTED", "value": null },

                { "valueType": "FORCED", "value": null },

                { "valueType": "EDITED", "value": null },

                { "valueType": "INPUTED", "value": null }
              ]
            }
          }
        ]
      ],
      "lines": { "min": 1, "max": 10 }
    },

    {
      "id": "j6z12s2d",
      "componentType": "Sequence",
      "label": "\"VI - Comment\"",
      "conditionFilter": "\"normal\""
    },

    {
      "id": "j6z0z3us",
      "componentType": "Textarea",
      "mandatory": false,
      "maxLength": 255,
      "label": "\"➡ 1. Do you have any comment about the survey?\"",
      "conditionFilter": "\"normal\"",
      "response": {
        "name": "SURVEY_COMMENT",
        "valueState": [
          { "valueType": "PREVIOUS", "value": null },

          { "valueType": "COLLECTED", "value": null },

          { "valueType": "FORCED", "value": null },

          { "valueType": "EDITED", "value": null },

          { "valueType": "INPUTED", "value": null }
        ]
      }
    }
  ],
  "variables": [
    { "variableType": "EXTERNAL", "name": "LAST_BROADCAST", "value": null },

    { "variableType": "COLLECTED", "name": "COMMENT", "responseRef": "COMMENT" },

    { "variableType": "COLLECTED", "name": "READY", "responseRef": "READY" },

    { "variableType": "COLLECTED", "name": "PRODUCER", "responseRef": "PRODUCER" },

    { "variableType": "COLLECTED", "name": "SEASON_NUMBER", "responseRef": "SEASON_NUMBER" },

    { "variableType": "COLLECTED", "name": "DATEFIRST", "responseRef": "DATEFIRST" },

    { "variableType": "COLLECTED", "name": "AUDIENCE_SHARE", "responseRef": "AUDIENCE_SHARE" },

    { "variableType": "COLLECTED", "name": "CITY", "responseRef": "CITY" },

    { "variableType": "COLLECTED", "name": "MAYOR", "responseRef": "MAYOR" },

    { "variableType": "COLLECTED", "name": "STATE", "responseRef": "STATE" },

    { "variableType": "COLLECTED", "name": "PET1", "responseRef": "PET1" },

    { "variableType": "COLLECTED", "name": "PET2", "responseRef": "PET2" },

    { "variableType": "COLLECTED", "name": "PET3", "responseRef": "PET3" },

    { "variableType": "COLLECTED", "name": "PET4", "responseRef": "PET4" },

    { "variableType": "COLLECTED", "name": "ICE_FLAVOUR1", "responseRef": "ICE_FLAVOUR1" },

    { "variableType": "COLLECTED", "name": "ICE_FLAVOUR2", "responseRef": "ICE_FLAVOUR2" },

    { "variableType": "COLLECTED", "name": "ICE_FLAVOUR3", "responseRef": "ICE_FLAVOUR3" },

    { "variableType": "COLLECTED", "name": "ICE_FLAVOUR4", "responseRef": "ICE_FLAVOUR4" },

    {
      "variableType": "COLLECTED",
      "name": "NUCLEAR_CHARACTER1",
      "responseRef": "NUCLEAR_CHARACTER1"
    },

    {
      "variableType": "COLLECTED",
      "name": "NUCLEAR_CHARACTER2",
      "responseRef": "NUCLEAR_CHARACTER2"
    },

    {
      "variableType": "COLLECTED",
      "name": "NUCLEAR_CHARACTER3",
      "responseRef": "NUCLEAR_CHARACTER3"
    },

    {
      "variableType": "COLLECTED",
      "name": "NUCLEAR_CHARACTER4",
      "responseRef": "NUCLEAR_CHARACTER4"
    },

    { "variableType": "COLLECTED", "name": "BIRTH_CHARACTER1", "responseRef": "BIRTH_CHARACTER1" },

    { "variableType": "COLLECTED", "name": "BIRTH_CHARACTER2", "responseRef": "BIRTH_CHARACTER2" },

    { "variableType": "COLLECTED", "name": "BIRTH_CHARACTER3", "responseRef": "BIRTH_CHARACTER3" },

    { "variableType": "COLLECTED", "name": "BIRTH_CHARACTER4", "responseRef": "BIRTH_CHARACTER4" },

    { "variableType": "COLLECTED", "name": "BIRTH_CHARACTER5", "responseRef": "BIRTH_CHARACTER5" },

    {
      "variableType": "COLLECTED",
      "name": "PERCENTAGE_EXPENSES11",
      "responseRef": "PERCENTAGE_EXPENSES11"
    },

    {
      "variableType": "COLLECTED",
      "name": "PERCENTAGE_EXPENSES21",
      "responseRef": "PERCENTAGE_EXPENSES21"
    },

    {
      "variableType": "COLLECTED",
      "name": "PERCENTAGE_EXPENSES31",
      "responseRef": "PERCENTAGE_EXPENSES31"
    },

    {
      "variableType": "COLLECTED",
      "name": "PERCENTAGE_EXPENSES41",
      "responseRef": "PERCENTAGE_EXPENSES41"
    },

    {
      "variableType": "COLLECTED",
      "name": "PERCENTAGE_EXPENSES51",
      "responseRef": "PERCENTAGE_EXPENSES51"
    },

    {
      "variableType": "COLLECTED",
      "name": "PERCENTAGE_EXPENSES61",
      "responseRef": "PERCENTAGE_EXPENSES61"
    },

    {
      "variableType": "COLLECTED",
      "name": "PERCENTAGE_EXPENSES71",
      "responseRef": "PERCENTAGE_EXPENSES71"
    },

    { "variableType": "COLLECTED", "name": "CLOWNING11", "responseRef": "CLOWNING11" },

    { "variableType": "COLLECTED", "name": "CLOWNING12", "responseRef": "CLOWNING12" },

    { "variableType": "COLLECTED", "name": "CLOWNING21", "responseRef": "CLOWNING21" },

    { "variableType": "COLLECTED", "name": "CLOWNING22", "responseRef": "CLOWNING22" },

    { "variableType": "COLLECTED", "name": "CLOWNING31", "responseRef": "CLOWNING31" },

    { "variableType": "COLLECTED", "name": "CLOWNING32", "responseRef": "CLOWNING32" },

    { "variableType": "COLLECTED", "name": "CLOWNING41", "responseRef": "CLOWNING41" },

    { "variableType": "COLLECTED", "name": "CLOWNING42", "responseRef": "CLOWNING42" },

    { "variableType": "COLLECTED", "name": "TRAVEL11", "responseRef": "TRAVEL11" },

    { "variableType": "COLLECTED", "name": "TRAVEL12", "responseRef": "TRAVEL12" },

    { "variableType": "COLLECTED", "name": "TRAVEL13", "responseRef": "TRAVEL13" },

    { "variableType": "COLLECTED", "name": "TRAVEL14", "responseRef": "TRAVEL14" },

    { "variableType": "COLLECTED", "name": "TRAVEL15", "responseRef": "TRAVEL15" },

    { "variableType": "COLLECTED", "name": "TRAVEL16", "responseRef": "TRAVEL16" },

    { "variableType": "COLLECTED", "name": "TRAVEL21", "responseRef": "TRAVEL21" },

    { "variableType": "COLLECTED", "name": "TRAVEL22", "responseRef": "TRAVEL22" },

    { "variableType": "COLLECTED", "name": "TRAVEL23", "responseRef": "TRAVEL23" },

    { "variableType": "COLLECTED", "name": "TRAVEL24", "responseRef": "TRAVEL24" },

    { "variableType": "COLLECTED", "name": "TRAVEL25", "responseRef": "TRAVEL25" },

    { "variableType": "COLLECTED", "name": "TRAVEL26", "responseRef": "TRAVEL26" },

    { "variableType": "COLLECTED", "name": "TRAVEL31", "responseRef": "TRAVEL31" },

    { "variableType": "COLLECTED", "name": "TRAVEL32", "responseRef": "TRAVEL32" },

    { "variableType": "COLLECTED", "name": "TRAVEL33", "responseRef": "TRAVEL33" },

    { "variableType": "COLLECTED", "name": "TRAVEL34", "responseRef": "TRAVEL34" },

    { "variableType": "COLLECTED", "name": "TRAVEL35", "responseRef": "TRAVEL35" },

    { "variableType": "COLLECTED", "name": "TRAVEL36", "responseRef": "TRAVEL36" },

    { "variableType": "COLLECTED", "name": "TRAVEL41", "responseRef": "TRAVEL41" },

    { "variableType": "COLLECTED", "name": "TRAVEL42", "responseRef": "TRAVEL42" },

    { "variableType": "COLLECTED", "name": "TRAVEL43", "responseRef": "TRAVEL43" },

    { "variableType": "COLLECTED", "name": "TRAVEL44", "responseRef": "TRAVEL44" },

    { "variableType": "COLLECTED", "name": "TRAVEL45", "responseRef": "TRAVEL45" },

    { "variableType": "COLLECTED", "name": "TRAVEL46", "responseRef": "TRAVEL46" },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS11",
      "responseRef": "FAVOURITE_CHARACTERS11"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS12",
      "responseRef": "FAVOURITE_CHARACTERS12"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS21",
      "responseRef": "FAVOURITE_CHARACTERS21"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS22",
      "responseRef": "FAVOURITE_CHARACTERS22"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS31",
      "responseRef": "FAVOURITE_CHARACTERS31"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS32",
      "responseRef": "FAVOURITE_CHARACTERS32"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS41",
      "responseRef": "FAVOURITE_CHARACTERS41"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS42",
      "responseRef": "FAVOURITE_CHARACTERS42"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS51",
      "responseRef": "FAVOURITE_CHARACTERS51"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS52",
      "responseRef": "FAVOURITE_CHARACTERS52"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS61",
      "responseRef": "FAVOURITE_CHARACTERS61"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS62",
      "responseRef": "FAVOURITE_CHARACTERS62"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS71",
      "responseRef": "FAVOURITE_CHARACTERS71"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS72",
      "responseRef": "FAVOURITE_CHARACTERS72"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS81",
      "responseRef": "FAVOURITE_CHARACTERS81"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS82",
      "responseRef": "FAVOURITE_CHARACTERS82"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS91",
      "responseRef": "FAVOURITE_CHARACTERS91"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS92",
      "responseRef": "FAVOURITE_CHARACTERS92"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS101",
      "responseRef": "FAVOURITE_CHARACTERS101"
    },

    {
      "variableType": "COLLECTED",
      "name": "FAVOURITE_CHARACTERS102",
      "responseRef": "FAVOURITE_CHARACTERS102"
    },

    { "variableType": "COLLECTED", "name": "SURVEY_COMMENT", "responseRef": "SURVEY_COMMENT" },

    {
      "variableType": "CALCULATED",
      "name": "SUM_EXPENSES",
      "expression": "cast(PERCENTAGE_EXPENSES11,number) + cast(PERCENTAGE_EXPENSES21,number) + cast(PERCENTAGE_EXPENSES31,number)+ cast(PERCENTAGE_EXPENSES41,number)+ cast(PERCENTAGE_EXPENSES51,number)+ cast(PERCENTAGE_EXPENSES61,number)+ cast(PERCENTAGE_EXPENSES71,number)+ cast(PERCENTAGE_EXPENSES81,number)+ cast(PERCENTAGE_EXPENSES91,number)+ cast(PERCENTAGE_EXPENSES101,number)"
    }
  ]
}
');