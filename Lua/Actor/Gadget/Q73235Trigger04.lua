require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73235Trigger04 = class("Q73235Trigger04", GadgetActorProxy)
Q73235Trigger04.defaultAlias = "Q73235Trigger04"
local Q73235ClientConfig = require("Quest/Client/Q73235ClientConfig")

local subIDs = Q73235ClientConfig.SubIDs
local npcs = Q73235ClientConfig.Npcs
local datas = Q73235ClientConfig.Datas

function Q73235Trigger04:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73235Trigger04:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(100, 20, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73235Trigger04:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73235"):NarratorOnlyTaskByData(datas.NarratorWithId04)
    self:DestroySelf()
end

function Q73235Trigger04:TriggerOut()
    print("TriggerOut")
end

return Q73235Trigger04
