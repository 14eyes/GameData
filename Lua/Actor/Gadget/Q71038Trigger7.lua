require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71038Trigger7 = class("Q71038Trigger7", GadgetActorProxy)
Q71038Trigger7.defaultAlias = "Q71038Trigger7"
local Q71038ClientConfig = require("Quest/Client/Q71038ClientConfig")

local subIDs = Q71038ClientConfig.SubIDs
local npcs = Q71038ClientConfig.Npcs
local datas = Q71038ClientConfig.Datas

function Q71038Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71038Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(11.53499, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71038Trigger7:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7103807)
    self:DestroySelf()
end

function Q71038Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q71038Trigger7
