require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602225Trigger = class("Q602225Trigger", GadgetActorProxy)
Q602225Trigger.defaultAlias = "Q602225Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602225Trigger:OnPostDataPrepare()
    print("Q602225Trigger - OnPostDataPrepare")
    this = self
end

function Q602225Trigger:OnPostComponentPrepare()
    print("Q602225Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602225Trigger:TriggerIn()
    print("Q602225Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 602225)
    this:DestroySelf()
end

function Q602225Trigger:PreTriggerIn()
    print("Q602225Trigger - PreTriggerIn")
end

function Q602225Trigger:LightUpTriggerIn()
    print("Q602225Trigger - LightUpTriggerIn")
end

function Q602225Trigger:TriggerOut()
    print("Q602225Trigger - TriggerOut")
end

return Q602225Trigger
