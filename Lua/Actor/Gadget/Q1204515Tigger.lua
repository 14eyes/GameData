require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204515Tigger = class("Q1204515Tigger", GadgetActorProxy)
Q1204515Tigger.defaultAlias = "Q1204515Tigger"
local Q12045ClientConfig = require("Quest/Client/Q12045ClientConfig")

local this
local subIDs = Q12045ClientConfig.SubIDs
local datas = Q12045ClientConfig.Datas
local npcs = Q12045ClientConfig.Npcs
local points = Q12045ClientConfig.Points

function Q1204515Tigger:OnPostDataPrepare()
    print("Q1204515Tigger - OnPostDataPrepare")
    this = self
end

function Q1204515Tigger:OnPostComponentPrepare()
    print("Q1204515Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12045)
end

function Q1204515Tigger:TriggerIn()
    print("Q1204515Tigger - TriggerIn")
    actorMgr:GetActor("12045"):PlayerEnterDungeonWithData(1500, 1233, 1204515, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q1204515Tigger:PreTriggerIn()
    print("Q1204515Tigger - PreTriggerIn")
end

function Q1204515Tigger:LightUpTriggerIn()
    print("Q1204515Tigger - LightUpTriggerIn")
end

function Q1204515Tigger:TriggerOut()
    print("Q1204515Tigger - TriggerOut")
end

return Q1204515Tigger
