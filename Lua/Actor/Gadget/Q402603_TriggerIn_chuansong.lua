require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402603_TriggerIn_chuansong = class("Q402603_TriggerIn_chuansong", GadgetActorProxy)
Q402603_TriggerIn_chuansong.defaultAlias = "Q402603_TriggerIn_chuansong"
local Q4026ClientConfig = require("Quest/Client/Q4026ClientConfig")

local this
local subIDs = Q4026ClientConfig.SubIDs
local npcs = Q4026ClientConfig.Npcs
local points = Q4026ClientConfig.Points
local datas = Q4026ClientConfig.Datas

function Q402603_TriggerIn_chuansong:OnPostDataPrepare()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn_chuansong] OnPostDataPrepare")
    this = self
end

function Q402603_TriggerIn_chuansong:OnPostComponentPrepare()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn_chuansong] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(250, 300, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402603_TriggerIn_chuansong:TriggerIn()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn_chuansong] TriggerIn")
    actorMgr:GetActor("4026"):TransmitPlayerByQuestId(402603, 1)
    this:DestroySelf()
end

function Q402603_TriggerIn_chuansong:PreTriggerIn()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn_chuansong] PreTriggerIn")
end

function Q402603_TriggerIn_chuansong:LightUpTriggerIn()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn_chuansong] LightUpTriggerIn")
end

function Q402603_TriggerIn_chuansong:TriggerOut()
    print("[MainId: 4026][Trigger: Q402603_TriggerIn_chuansong] TriggerOut")
end

return Q402603_TriggerIn_chuansong
