require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501015Triggerin = class("Q1501015Triggerin", GadgetActorProxy)
Q1501015Triggerin.defaultAlias = "Q1501015Triggerin"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501015Triggerin:OnPostDataPrepare()
    print("Q1501015Triggerin - OnPostDataPrepare")
    this = self
end

function Q1501015Triggerin:OnPostComponentPrepare()
    print("Q1501015Triggerin - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501015Triggerin:TriggerIn()
    print("Q1501015Triggerin - TriggerIn")
    actorMgr:GetActor("15010"):RequestInteraction(npcs.Npc1087.alias, "", true)
    this:DestroySelf()
end

function Q1501015Triggerin:PreTriggerIn()
    print("Q1501015Triggerin - PreTriggerIn")
end

function Q1501015Triggerin:LightUpTriggerIn()
    print("Q1501015Triggerin - LightUpTriggerIn")
end

function Q1501015Triggerin:TriggerOut()
    print("Q1501015Triggerin - TriggerOut")
end

return Q1501015Triggerin
