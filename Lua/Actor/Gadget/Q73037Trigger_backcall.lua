require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73037Trigger_backcall = class("Q73037Trigger_backcall", GadgetActorProxy)
Q73037Trigger_backcall.defaultAlias = "Q73037Trigger_backcall"
local Q73037ClientConfig = require("Quest/Client/Q73037ClientConfig")

local subIDs = Q73037ClientConfig.SubIDs
local npcs = Q73037ClientConfig.Npcs
local datas = Q73037ClientConfig.Datas

function Q73037Trigger_backcall:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73037Trigger_backcall:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(20, 5, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73037Trigger_backcall:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303702)
    self:DestroySelf()
end

function Q73037Trigger_backcall:TriggerOut()
    print("TriggerOut")
end

return Q73037Trigger_backcall
