require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73002Trigger1 = class("Q73002Trigger1", GadgetActorProxy)
Q73002Trigger1.defaultAlias = "Q73002Trigger1"
local Q73002ClientConfig = require("Quest/Client/Q73002ClientConfig")

local subIDs = Q73002ClientConfig.SubIDs
local npcs = Q73002ClientConfig.Npcs
local datas = Q73002ClientConfig.Datas

function Q73002Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73002Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(42.89067, 82.46965, 176.5775, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73002Trigger1:TriggerIn()
    print("TriggerIn")
end

function Q73002Trigger1:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 7300201)
    self:DestroySelf()
end

return Q73002Trigger1
