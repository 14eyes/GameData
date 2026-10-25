require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602247Trigger = class("Q602247Trigger", GadgetActorProxy)
Q602247Trigger.defaultAlias = "Q602247Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602247Trigger:OnPostDataPrepare()
    print("Q602247Trigger - OnPostDataPrepare")
    this = self
end

function Q602247Trigger:OnPostComponentPrepare()
    print("Q602247Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602247Trigger:TriggerIn()
    print("Q602247Trigger - TriggerIn")
end

function Q602247Trigger:PreTriggerIn()
    print("Q602247Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602247)
    this:DestroySelf()
end

function Q602247Trigger:LightUpTriggerIn()
    print("Q602247Trigger - LightUpTriggerIn")
end

function Q602247Trigger:TriggerOut()
    print("Q602247Trigger - TriggerOut")
end

return Q602247Trigger
