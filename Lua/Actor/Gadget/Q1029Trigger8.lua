require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger8 = class("Q1029Trigger8", GadgetActorProxy)
Q1029Trigger8.defaultAlias = "Q1029Trigger8"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(40, 40, 10, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger8:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("1029"):EnablePlayerInput(true)
    self:DestroySelf()
end

function Q1029Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger8
