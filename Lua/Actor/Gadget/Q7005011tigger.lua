require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005011tigger = class("Q7005011tigger", GadgetActorProxy)
Q7005011tigger.defaultAlias = "Q7005011tigger"
local Q70050ClientConfig = require("Quest/Client/Q70050ClientConfig")

local this
local subIDs = Q70050ClientConfig.SubIDs
local datas = Q70050ClientConfig.Datas
local npcs = Q70050ClientConfig.Npcs
local points = Q70050ClientConfig.Points

function Q7005011tigger:OnPostDataPrepare()
    print("Q7005011tigger - OnPostDataPrepare")
    this = self
end

function Q7005011tigger:OnPostComponentPrepare()
    print("Q7005011tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70050)
end

function Q7005011tigger:TriggerIn()
    print("Q7005011tigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005011)
    this:DestroySelf()
end

function Q7005011tigger:PreTriggerIn()
    print("Q7005011tigger - PreTriggerIn")
end

function Q7005011tigger:LightUpTriggerIn()
    print("Q7005011tigger - LightUpTriggerIn")
end

function Q7005011tigger:TriggerOut()
    print("Q7005011tigger - TriggerOut")
end

return Q7005011tigger
