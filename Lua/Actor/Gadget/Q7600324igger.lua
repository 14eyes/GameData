require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600324igger = class("Q7600324igger", GadgetActorProxy)
Q7600324igger.defaultAlias = "Q7600324igger"
local Q76003ClientConfig = require("Quest/Client/Q76003ClientConfig")

local this
local subIDs = Q76003ClientConfig.SubIDs
local npcs = Q76003ClientConfig.Npcs
local points = Q76003ClientConfig.Points

function Q7600324igger:OnPostDataPrepare()
    print("Q7600324igger - OnPostDataPrepare")
    this = self
end

function Q7600324igger:OnPostComponentPrepare()
    print("Q7600324igger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 30, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76003)
end

function Q7600324igger:TriggerIn()
    print("Q7600324igger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600324)
    this:DestroySelf()
end

function Q7600324igger:PreTriggerIn()
    print("Q7600324igger - PreTriggerIn")
end

function Q7600324igger:LightUpTriggerIn()
    print("Q7600324igger - LightUpTriggerIn")
end

function Q7600324igger:TriggerOut()
    print("Q7600324igger - TriggerOut")
end

return Q7600324igger
