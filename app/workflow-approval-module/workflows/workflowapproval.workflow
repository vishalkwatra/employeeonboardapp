{
	"contents": {
		"724b38ba-fbe2-4c1b-817c-26e068a9a363": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "workflowapproval",
			"subject": "workflowapproval",
			"name": "workflowapproval",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"30bd90b3-6ae2-4871-9785-35a379f11164": {
					"name": "EndEvent6"
				},
				"748a3939-4baa-4cda-92b3-503d4aeba93d": {
					"name": "EndEvent"
				}
			},
			"activities": {
				"6e01987e-8c87-4a1a-adc9-b9c6a4e0aaa0": {
					"name": "Approve Employee"
				},
				"6ca3d789-e2d5-481a-93f1-7f664b51557d": {
					"name": "Is Approved"
				},
				"39abd43f-325a-47eb-a610-10c48424f357": {
					"name": "Rejection Mail"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"20d5d1ce-d5fa-4015-9f0e-7170133ad2ca": {
					"name": "SequenceFlow13"
				},
				"c4db559b-fcbe-426e-909e-02e2815e22e6": {
					"name": "No"
				},
				"8c2f8f0c-22ed-426d-8aab-ba70d1b7c831": {
					"name": "SequenceFlow15"
				},
				"d9d25218-57ce-4d12-9f5f-ef4373a65eda": {
					"name": "Yes"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"6e01987e-8c87-4a1a-adc9-b9c6a4e0aaa0": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Employee for ${context.empData.firstName} ${context.empData.lastName}",
			"description": "Manager approves the newly onboarded employee",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${info.startedBy}",
			"formReference": "/forms/workflowapproval/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approve Employee"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "6e01987e-8c87-4a1a-adc9-b9c6a4e0aaa0"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"6a4a9a2a-99be-4a8f-b418-035cb68d5474": {},
				"f61d0cb9-c7fb-4223-9696-76b4ec9bfc2a": {},
				"3e251e02-b20d-4b86-97ac-a32243e84a9d": {},
				"b947deb6-eee2-436d-873e-2976c1206dfa": {},
				"b1f7eb44-4063-494a-ac69-f3abc8a89282": {},
				"60bf5839-3613-44cd-bad6-864981c86f0a": {},
				"3675a553-3df5-4262-80bd-d35d054416fd": {},
				"dade5ee7-2585-49c9-bed3-78069df8402d": {},
				"c8f81378-3728-45d6-86ab-04d16b1083d9": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 68.5,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,84.5 94,84.5",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "6a4a9a2a-99be-4a8f-b418-035cb68d5474",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"6a4a9a2a-99be-4a8f-b418-035cb68d5474": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": 54.5,
			"width": 100,
			"height": 60,
			"object": "6e01987e-8c87-4a1a-adc9-b9c6a4e0aaa0"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 7,
			"messageeventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 16,
			"startevent": 1,
			"intermediatemessageevent": 1,
			"endevent": 7,
			"usertask": 1,
			"servicetask": 1,
			"mailtask": 1,
			"exclusivegateway": 3,
			"referencedsubflow": 1
		},
		"30bd90b3-6ae2-4871-9785-35a379f11164": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent6",
			"name": "EndEvent6",
			"eventDefinitions": {
				"70822a39-f0c4-46ee-a3da-7e445a768c04": {}
			}
		},
		"f61d0cb9-c7fb-4223-9696-76b4ec9bfc2a": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 525.9999976158142,
			"y": 67,
			"width": 35,
			"height": 35,
			"object": "30bd90b3-6ae2-4871-9785-35a379f11164"
		},
		"20d5d1ce-d5fa-4015-9f0e-7170133ad2ca": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "SequenceFlow13",
			"sourceRef": "6e01987e-8c87-4a1a-adc9-b9c6a4e0aaa0",
			"targetRef": "6ca3d789-e2d5-481a-93f1-7f664b51557d"
		},
		"3e251e02-b20d-4b86-97ac-a32243e84a9d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,84.5 244,84.5",
			"sourceSymbol": "6a4a9a2a-99be-4a8f-b418-035cb68d5474",
			"targetSymbol": "b947deb6-eee2-436d-873e-2976c1206dfa",
			"object": "20d5d1ce-d5fa-4015-9f0e-7170133ad2ca"
		},
		"6ca3d789-e2d5-481a-93f1-7f664b51557d": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway3",
			"name": "Is Approved",
			"documentation": "Approved or not",
			"default": "c4db559b-fcbe-426e-909e-02e2815e22e6"
		},
		"b947deb6-eee2-436d-873e-2976c1206dfa": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 244,
			"y": 63.5,
			"object": "6ca3d789-e2d5-481a-93f1-7f664b51557d"
		},
		"c4db559b-fcbe-426e-909e-02e2815e22e6": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "No",
			"sourceRef": "6ca3d789-e2d5-481a-93f1-7f664b51557d",
			"targetRef": "39abd43f-325a-47eb-a610-10c48424f357"
		},
		"b1f7eb44-4063-494a-ac69-f3abc8a89282": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,84.5 320.99999940395355,84.5 320.99999940395355,42 355.9999988079071,42",
			"sourceSymbol": "b947deb6-eee2-436d-873e-2976c1206dfa",
			"targetSymbol": "60bf5839-3613-44cd-bad6-864981c86f0a",
			"object": "c4db559b-fcbe-426e-909e-02e2815e22e6"
		},
		"39abd43f-325a-47eb-a610-10c48424f357": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Rejection Mail",
			"mailDefinitionRef": "372b631a-87ec-4a45-9df2-e026a8299d13"
		},
		"60bf5839-3613-44cd-bad6-864981c86f0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 355.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "39abd43f-325a-47eb-a610-10c48424f357"
		},
		"8c2f8f0c-22ed-426d-8aab-ba70d1b7c831": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "39abd43f-325a-47eb-a610-10c48424f357",
			"targetRef": "30bd90b3-6ae2-4871-9785-35a379f11164"
		},
		"3675a553-3df5-4262-80bd-d35d054416fd": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "455.9999988079071,42 490.99999821186066,42 490.99999821186066,84.5 525.9999976158142,84.5",
			"sourceSymbol": "60bf5839-3613-44cd-bad6-864981c86f0a",
			"targetSymbol": "f61d0cb9-c7fb-4223-9696-76b4ec9bfc2a",
			"object": "8c2f8f0c-22ed-426d-8aab-ba70d1b7c831"
		},
		"748a3939-4baa-4cda-92b3-503d4aeba93d": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent7",
			"name": "EndEvent",
			"eventDefinitions": {
				"f5b7bc36-9b3a-433a-9aa7-47defd306bd9": {}
			}
		},
		"dade5ee7-2585-49c9-bed3-78069df8402d": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 355.9999988079071,
			"y": 122,
			"width": 35,
			"height": 35,
			"object": "748a3939-4baa-4cda-92b3-503d4aeba93d"
		},
		"d9d25218-57ce-4d12-9f5f-ef4373a65eda": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"accept\"}",
			"id": "sequenceflow16",
			"name": "Yes",
			"sourceRef": "6ca3d789-e2d5-481a-93f1-7f664b51557d",
			"targetRef": "748a3939-4baa-4cda-92b3-503d4aeba93d"
		},
		"c8f81378-3728-45d6-86ab-04d16b1083d9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "286,84.5 320.99999940395355,84.5 320.99999940395355,139.5 355.9999988079071,139.5",
			"sourceSymbol": "b947deb6-eee2-436d-873e-2976c1206dfa",
			"targetSymbol": "dade5ee7-2585-49c9-bed3-78069df8402d",
			"object": "d9d25218-57ce-4d12-9f5f-ef4373a65eda"
		},
		"372b631a-87ec-4a45-9df2-e026a8299d13": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "test@gmail.com",
			"subject": "Request was rejected",
			"text": "Request was rejected",
			"id": "maildefinition1"
		},
		"f5b7bc36-9b3a-433a-9aa7-47defd306bd9": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition6"
		},
		"70822a39-f0c4-46ee-a3da-7e445a768c04": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition7"
		}
	}
}