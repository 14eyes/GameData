require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71038Trigger1 = class("Q71038Trigger1", GadgetActorProxy)
Q71038Trigger1.defaultAlias = "Q71038Trigger1"
local Q71038ClientConfig = require("Quest/Client/Q71038ClientConfig")

local subIDs = Q71038ClientConfig.SubIDs
local npcs = Q71038ClientConfig.Npcs
local datas = Q71038ClientConfig.Datas

function Q71038Trigger4.OnPostDataPrepare(arg1)
    print("OnPostDataPrepare")
end

function Q71038Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6.549567, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71038Trigger4:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7103804)
    self:DestroySelf()
end

function Q71038Trigger4.TriggerOut(arg1)
    print("TriggerOut")
end

return Q71038Trigger1
