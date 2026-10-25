require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7011101Trigger = class("Q7011101Trigger", GadgetActorProxy)
Q7011101Trigger.defaultAlias = "Q7011101Trigger"
local Q70111ClientConfig = require("Quest/Client/Q70111ClientConfig")

local this
local subIDs = Q70111ClientConfig.SubIDs
local npcs = Q70111ClientConfig.Npcs
local points = Q70111ClientConfig.Points

function Q7011101Trigger:OnPostDataPrepare()
    print("Q7011101Trigger - OnPostDataPrepare")
    this = self
end

function Q7011101Trigger:OnPostComponentPrepare()
    print("Q7011101Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(52.72462, 44.69322, 39.74929, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70111)
end

function Q7011101Trigger:TriggerIn()
    print("Q7011101Trigger - TriggerIn")
    if actorMgr:GetActor("70111"):GetQuestVar(7011101, 0) == 0 then
        actorMgr:GetActor("70111"):CreateQuestNpcWithTrigger("Q70111N1826Trigger", 7011101, 1826, 0, 30, 2)
        actorMgr:GetActor("70111"):SetQuestVarByMainId(0, 1)
    end

    this:DestroySelf()
end

function Q7011101Trigger:PreTriggerIn()
    print("Q7011101Trigger - PreTriggerIn")
end

function Q7011101Trigger:LightUpTriggerIn()
    print("Q7011101Trigger - LightUpTriggerIn")
end

function Q7011101Trigger:TriggerOut()
    print("Q7011101Trigger - TriggerOut")
end

return Q7011101Trigger
