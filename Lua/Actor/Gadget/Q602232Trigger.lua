require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602232Trigger = class("Q602232Trigger", GadgetActorProxy)
Q602232Trigger.defaultAlias = "Q602232Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602232Trigger:OnPostDataPrepare()
    print("Q602232Trigger - OnPostDataPrepare")
    this = self
end

function Q602232Trigger:OnPostComponentPrepare()
    print("Q602232Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602232Trigger:TriggerIn()
    print("Q602232Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602232)
    this:DestroySelf()
end

function Q602232Trigger:PreTriggerIn()
    print("Q602232Trigger - PreTriggerIn")
    actorUtils.HandleQuestLoadingCtxOpForLua("602203", 1)
end

function Q602232Trigger:LightUpTriggerIn()
    print("Q602232Trigger - LightUpTriggerIn")
end

function Q602232Trigger:TriggerOut()
    print("Q602232Trigger - TriggerOut")
end

return Q602232Trigger
