require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902544Trigger8 = class("Q7902544Trigger8", GadgetActorProxy)
Q7902544Trigger8.defaultAlias = "Q7902544Trigger8"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs
local datas = Q79025ClientConfig.Datas

function Q7902544Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902544Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902544Trigger8:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7902544)
    self:DestroySelf()
end

function Q7902544Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q7902544Trigger8
