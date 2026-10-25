require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502402_Trigger2 = class("Q1502402_Trigger2", GadgetActorProxy)
Q1502402_Trigger2.defaultAlias = "Q1502402_Trigger2"
local Q15024ClientConfig = require("Quest/Client/Q15024ClientConfig")

local this
local subIDs = Q15024ClientConfig.SubIDs
local datas = Q15024ClientConfig.Datas
local npcs = Q15024ClientConfig.Npcs
local points = Q15024ClientConfig.Points

function Q1502402_Trigger2:OnPostDataPrepare()
    print("Q1502402_Trigger2 - OnPostDataPrepare")
    this = self
end

function Q1502402_Trigger2:OnPostComponentPrepare()
    print("Q1502402_Trigger2 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12.158986, 11.504905, 8.12491, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15024)
end

function Q1502402_Trigger2:TriggerIn()
    print("Q1502402_Trigger2 - TriggerIn")
    actorMgr:GetActor("15024"):QuestNarratorTask(datas.NarratorWithId_1502401, nil)
    this:DestroySelf()
end

function Q1502402_Trigger2:PreTriggerIn()
    print("Q1502402_Trigger2 - PreTriggerIn")
end

function Q1502402_Trigger2:LightUpTriggerIn()
    print("Q1502402_Trigger2 - LightUpTriggerIn")
end

function Q1502402_Trigger2:TriggerOut()
    print("Q1502402_Trigger2 - TriggerOut")
end

return Q1502402_Trigger2
