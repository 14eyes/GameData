require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7307010Trigger = class("Q7307010Trigger", GadgetActorProxy)
Q7307010Trigger.defaultAlias = "Q7307010Trigger"
local Q73070ClientConfig = require("Quest/Client/Q73070ClientConfig")

local subIDs = Q73070ClientConfig.SubIDs
local npcs = Q73070ClientConfig.Npcs
local datas = Q73070ClientConfig.Datas

function Q7307010Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7307010Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7307010Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7307010)
    self:DestroySelf()
end

function Q7307010Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7307010Trigger
