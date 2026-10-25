require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609826Tigger = class("Q7609826Tigger", GadgetActorProxy)
Q7609826Tigger.defaultAlias = "Q7609826Tigger"
local Q76098ClientConfig = require("Quest/Client/Q76098ClientConfig")

local this
local subIDs = Q76098ClientConfig.SubIDs
local datas = Q76098ClientConfig.Datas
local npcs = Q76098ClientConfig.Npcs
local points = Q76098ClientConfig.Points

function Q7609826Tigger:OnPostDataPrepare()
    print("Q7609826Tigger - OnPostDataPrepare")
    this = self
end

function Q7609826Tigger:OnPostComponentPrepare()
    print("Q7609826Tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76098)
end

function Q7609826Tigger:TriggerIn()
    print("Q7609826Tigger - TriggerIn")
    this:DestroySelf()
end

function Q7609826Tigger:PreTriggerIn()
    print("Q7609826Tigger - PreTriggerIn")
end

function Q7609826Tigger:LightUpTriggerIn()
    print("Q7609826Tigger - LightUpTriggerIn")
end

function Q7609826Tigger:TriggerOut()
    print("Q7609826Tigger - TriggerOut")
end

return Q7609826Tigger
