require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602233Trigger = class("Q602233Trigger", GadgetActorProxy)
Q602233Trigger.defaultAlias = "Q602233Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602233Trigger:OnPostDataPrepare()
    print("Q602233Trigger - OnPostDataPrepare")
    this = self
end

function Q602233Trigger:OnPostComponentPrepare()
    print("Q602233Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602233Trigger:TriggerIn()
    print("Q602233Trigger - TriggerIn")
end

function Q602233Trigger:PreTriggerIn()
    print("Q602233Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602233)
    this:DestroySelf()
end

function Q602233Trigger:LightUpTriggerIn()
    print("Q602233Trigger - LightUpTriggerIn")
end

function Q602233Trigger:TriggerOut()
    print("Q602233Trigger - TriggerOut")
end

return Q602233Trigger
