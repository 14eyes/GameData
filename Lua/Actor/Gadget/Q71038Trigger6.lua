require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71038Trigger6 = class("Q71038Trigger6", GadgetActorProxy)
Q71038Trigger6.defaultAlias = "Q71038Trigger6"
local Q71038ClientConfig = require("Quest/Client/Q71038ClientConfig")

local subIDs = Q71038ClientConfig.SubIDs
local npcs = Q71038ClientConfig.Npcs
local datas = Q71038ClientConfig.Datas

function Q71038Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71038Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71038Trigger6:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7103806)
    self:DestroySelf()
end

function Q71038Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q71038Trigger6
