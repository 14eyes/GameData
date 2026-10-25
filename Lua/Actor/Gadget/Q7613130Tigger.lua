require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613130Tigger = class("Q7613130Tigger", GadgetActorProxy)
Q7613130Tigger.defaultAlias = "Q7613130Tigger"
local Q76131ClientConfig = require("Quest/Client/Q76131ClientConfig")

local this
local subIDs = Q76131ClientConfig.SubIDs
local npcs = Q76131ClientConfig.Npcs
local points = Q76131ClientConfig.Points

function Q7613130Tigger:OnPostDataPrepare()
    print("Q7613130Tigger - OnPostDataPrepare")
    this = self
end

function Q7613130Tigger:OnPostComponentPrepare()
    print("Q7613130Tigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 40, 40, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76131)
end

function Q7613130Tigger:TriggerIn()
    print("Q7613130Tigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7613130})
    this:DestroySelf()
end

function Q7613130Tigger:PreTriggerIn()
    print("Q7613130Tigger - PreTriggerIn")
end

function Q7613130Tigger:LightUpTriggerIn()
    print("Q7613130Tigger - LightUpTriggerIn")
end

function Q7613130Tigger:TriggerOut()
    print("Q7613130Tigger - TriggerOut")
end

return Q7613130Tigger
