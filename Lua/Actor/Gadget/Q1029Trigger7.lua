require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger7 = class("Q1029Trigger7", GadgetActorProxy)
Q1029Trigger7.defaultAlias = "Q1029Trigger7"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(10, 10, 3, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger7:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1029"):EnablePlayerInput(false)
    self:DestroySelf()
end

function Q1029Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger7
