require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602201Trigger = class("Q7602201Trigger", GadgetActorProxy)
Q7602201Trigger.defaultAlias = "Q7602201Trigger"
local Q76022ClientConfig = require("Quest/Client/Q76022ClientConfig")

local this
local subIDs = Q76022ClientConfig.SubIDs
local datas = Q76022ClientConfig.Datas
local npcs = Q76022ClientConfig.Npcs

function Q7602201Trigger:OnPostDataPrepare()
    print("Q7602201Trigger - OnPostDataPrepare")
    this = self
end

function Q7602201Trigger:OnPostComponentPrepare()
    print("Q7602201Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76022)
end

function Q7602201Trigger:TriggerIn()
    print("Q7602201Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602201)
    this:DestroySelf()
end

function Q7602201Trigger:PreTriggerIn()
    print("Q7602201Trigger - PreTriggerIn")
end

function Q7602201Trigger:LightUpTriggerIn()
    print("Q7602201Trigger - LightUpTriggerIn")
end

function Q7602201Trigger:TriggerOut()
    print("Q7602201Trigger - TriggerOut")
end

return Q7602201Trigger
