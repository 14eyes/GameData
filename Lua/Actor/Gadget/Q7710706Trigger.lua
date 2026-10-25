require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710706Trigger = class("Q7710706Trigger", GadgetActorProxy)
Q7710706Trigger.defaultAlias = "Q7710706Trigger"
local Q77107ClientConfig = require("Quest/Client/Q77107ClientConfig")

local this
local subIDs = Q77107ClientConfig.SubIDs
local datas = Q77107ClientConfig.Datas
local npcs = Q77107ClientConfig.Npcs
local points = Q77107ClientConfig.Points

function Q7710706Trigger:OnPostDataPrepare()
    print("Q7710706Trigger - OnPostDataPrepare")
    this = self
end

function Q7710706Trigger:OnPostComponentPrepare()
    print("Q7710706Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(260, 7.466191, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77107)
end

function Q7710706Trigger:TriggerIn()
    print("Q7710706Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710706)
    this:DestroySelf()
end

function Q7710706Trigger:PreTriggerIn()
    print("Q7710706Trigger - PreTriggerIn")
end

function Q7710706Trigger:LightUpTriggerIn()
    print("Q7710706Trigger - LightUpTriggerIn")
end

function Q7710706Trigger:TriggerOut()
    print("Q7710706Trigger - TriggerOut")
end

return Q7710706Trigger
