require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006103Trigger = class("Q7006103Trigger", GadgetActorProxy)
Q7006103Trigger.defaultAlias = "Q7006103Trigger"
local Q70061ClientConfig = require("Quest/Client/Q70061ClientConfig")

local this
local subIDs = Q70061ClientConfig.SubIDs
local datas = Q70061ClientConfig.Datas
local npcs = Q70061ClientConfig.Npcs
local points = Q70061ClientConfig.Points

function Q7006103Trigger:OnPostDataPrepare()
    print("Q7006103Trigger - OnPostDataPrepare")
    this = self
end

function Q7006103Trigger:OnPostComponentPrepare()
    print("Q7006103Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70061)
end

function Q7006103Trigger:TriggerIn()
    print("Q7006103Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006103)
    this:DestroySelf()
end

function Q7006103Trigger:PreTriggerIn()
    print("Q7006103Trigger - PreTriggerIn")
end

function Q7006103Trigger:LightUpTriggerIn()
    print("Q7006103Trigger - LightUpTriggerIn")
end

function Q7006103Trigger:TriggerOut()
    print("Q7006103Trigger - TriggerOut")
end

return Q7006103Trigger
