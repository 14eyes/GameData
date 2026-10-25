require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7109809rigger = class("Q7109809rigger", GadgetActorProxy)
Q7109809rigger.defaultAlias = "Q7109809rigger"
local Q71098ClientConfig = require("Quest/Client/Q71098ClientConfig")

local subIDs = Q71098ClientConfig.SubIDs
local npcs = Q71098ClientConfig.Npcs
local datas = Q71098ClientConfig.Datas

function Q7109809rigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7109809rigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7109809rigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7219809)
    self:DestroySelf()
end

function Q7109809rigger:TriggerOut()
    print("TriggerOut")
end

return Q7109809rigger
