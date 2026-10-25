require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73083Trigger3 = class("Q73083Trigger3", GadgetActorProxy)
Q73083Trigger3.defaultAlias = "Q73083Trigger3"
local Q73083ClientConfig = require("Quest/Client/Q73083ClientConfig")

local subIDs = Q73083ClientConfig.SubIDs
local npcs = Q73083ClientConfig.Npcs
local datas = Q73083ClientConfig.Datas

function Q73083Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73083Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73083Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73083"):LevelLoadFinishSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 7308319)
        actorMgr:GetActor("Q73083Trigger3"):DestroySelf()
    end)
end

function Q73083Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q73083Trigger3
