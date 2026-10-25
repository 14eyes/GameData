require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600106Trigger = class("Q7600106Trigger", GadgetActorProxy)
Q7600106Trigger.defaultAlias = "Q7600106Trigger"
local Q76001ClientConfig = require("Quest/Client/Q76001ClientConfig")

local this
local subIDs = Q76001ClientConfig.SubIDs
local datas = Q76001ClientConfig.Datas
local npcs = Q76001ClientConfig.Npcs
local points = Q76001ClientConfig.Points

function Q7600106Trigger:OnPostDataPrepare()
    print("Q7600106Trigger - OnPostDataPrepare")
    this = self
end

function Q7600106Trigger:OnPostComponentPrepare()
    print("Q7600106Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76001)
end

function Q7600106Trigger:TriggerIn()
    print("Q7600106Trigger - TriggerIn")
    if actorMgr:GetActor("76001"):GetQuestGlobalVar(7608101) == 0 then
        actorMgr:GetActor("76001"):QuestNarratorTask(datas.NarratorWithId_tomb, nil)
    end

    this:DestroySelf()
end

function Q7600106Trigger:PreTriggerIn()
    print("Q7600106Trigger - PreTriggerIn")
end

function Q7600106Trigger:LightUpTriggerIn()
    print("Q7600106Trigger - LightUpTriggerIn")
end

function Q7600106Trigger:TriggerOut()
    print("Q7600106Trigger - TriggerOut")
end

return Q7600106Trigger
