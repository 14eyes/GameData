require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger1501507 = class("tigger1501507", GadgetActorProxy)
tigger1501507.defaultAlias = "tigger1501507"
local Q15015ClientConfig = require("Quest/Client/Q15015ClientConfig")

local this
local subIDs = Q15015ClientConfig.SubIDs
local datas = Q15015ClientConfig.Datas
local npcs = Q15015ClientConfig.Npcs
local points = Q15015ClientConfig.Points

function tigger1501507:OnPostDataPrepare()
    print("tigger1501507 - OnPostDataPrepare")
    this = self
end

function tigger1501507:OnPostComponentPrepare()
    print("tigger1501507 - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "1501507_TLZL", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 15015)
end

function tigger1501507:TriggerIn()
    print("tigger1501507 - TriggerIn")
    actorMgr:GetActor("15015"):RequestInteraction(npcs.Npc14705.alias, "", true)
    this:DestroySelf()
end

function tigger1501507:PreTriggerIn()
    print("tigger1501507 - PreTriggerIn")
end

function tigger1501507:LightUpTriggerIn()
    print("tigger1501507 - LightUpTriggerIn")
end

function tigger1501507:TriggerOut()
    print("tigger1501507 - TriggerOut")
end

return tigger1501507
