require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005015tigger = class("Q7005015tigger", GadgetActorProxy)
Q7005015tigger.defaultAlias = "Q7005015tigger"
local Q70050ClientConfig = require("Quest/Client/Q70050ClientConfig")

local this
local subIDs = Q70050ClientConfig.SubIDs
local datas = Q70050ClientConfig.Datas
local npcs = Q70050ClientConfig.Npcs
local points = Q70050ClientConfig.Points

function Q7005015tigger:OnPostDataPrepare()
    print("Q7005015tigger - OnPostDataPrepare")
    this = self
end

function Q7005015tigger:OnPostComponentPrepare()
    print("Q7005015tigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70050)
end

function Q7005015tigger:TriggerIn()
    print("Q7005015tigger - TriggerIn")
    this:ShowBlackScreen(0.5, 1.5, 0.5, nil, nil, nil, "", false, true)
    actorMgr:GetActor("70050"):RequestInteraction(npcs.Npc5268.alias, "", true)
    this:DestroySelf()
end

function Q7005015tigger:PreTriggerIn()
    print("Q7005015tigger - PreTriggerIn")
end

function Q7005015tigger:LightUpTriggerIn()
    print("Q7005015tigger - LightUpTriggerIn")
end

function Q7005015tigger:TriggerOut()
    print("Q7005015tigger - TriggerOut")
end

return Q7005015tigger
