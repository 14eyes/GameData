require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1204505Tigger = class("Q1204505Tigger", GadgetActorProxy)
Q1204505Tigger.defaultAlias = "Q1204505Tigger"
local Q12045ClientConfig = require("Quest/Client/Q12045ClientConfig")

local this
local subIDs = Q12045ClientConfig.SubIDs
local datas = Q12045ClientConfig.Datas
local npcs = Q12045ClientConfig.Npcs
local points = Q12045ClientConfig.Points

function Q1204505Tigger:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Q1204505Tigger:OnPostDataPrepare()
    print("Q1204505Tigger - OnPostDataPrepare")
    this = self
end

function Q1204505Tigger:OnPostComponentPrepare()
    print("Q1204505Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 12045)
end

function Q1204505Tigger:TriggerIn()
    print("Q1204505Tigger - TriggerIn")
    this:ActorDestroy("Q1204513Tigger")
    this:DestroySelf()
end

function Q1204505Tigger:PreTriggerIn()
    print("Q1204505Tigger - PreTriggerIn")
end

function Q1204505Tigger:LightUpTriggerIn()
    print("Q1204505Tigger - LightUpTriggerIn")
end

function Q1204505Tigger:TriggerOut()
    print("Q1204505Tigger - TriggerOut")
end

return Q1204505Tigger
