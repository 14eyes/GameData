require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7902545Trigger8 = class("Q7902545Trigger8", GadgetActorProxy)
Q7902545Trigger8.defaultAlias = "Q7902545Trigger8"
local Q79025ClientConfig = require("Quest/Client/Q79025ClientConfig")

local subIDs = Q79025ClientConfig.SubIDs
local npcs = Q79025ClientConfig.Npcs
local datas = Q79025ClientConfig.Datas

function Q7902545Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7902545Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7902545Trigger8:TriggerIn()
    print("TriggerIn")
end

function Q7902545Trigger8:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(false, 7902545)
    self:DestroySelf()
end

return Q7902545Trigger8
