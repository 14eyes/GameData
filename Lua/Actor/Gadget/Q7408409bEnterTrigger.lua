require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7408409bEnterTrigger = class("Q7408409bEnterTrigger", GadgetActorProxy)
Q7408409bEnterTrigger.defaultAlias = "Q7408409bEnterTrigger"
local Q74084ClientConfig = require("Quest/Client/Q74084ClientConfig")

local this
local subIDs = Q74084ClientConfig.SubIDs
local npcs = Q74084ClientConfig.Npcs
local points = Q74084ClientConfig.Points
local datas = Q74084ClientConfig.Datas

function Q7408409bEnterTrigger:OnPostDataPrepare()
    print("[MainId: 74084][Trigger: Q7408409bEnterTrigger] OnPostDataPrepare")
    this = self
end

function Q7408409bEnterTrigger:OnPostComponentPrepare()
    print("[MainId: 74084][Trigger: Q7408409bEnterTrigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(101.0316, 200, 21.5, true, {x = 0.0, y = 0.3, z = -7.86}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7408409bEnterTrigger:TriggerIn()
    print("[MainId: 74084][Trigger: Q7408409bEnterTrigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7408409)
    this:DestroySelf()
end

function Q7408409bEnterTrigger:PreTriggerIn()
    print("[MainId: 74084][Trigger: Q7408409bEnterTrigger] PreTriggerIn")
end

function Q7408409bEnterTrigger:LightUpTriggerIn()
    print("[MainId: 74084][Trigger: Q7408409bEnterTrigger] LightUpTriggerIn")
end

function Q7408409bEnterTrigger:TriggerOut()
    print("[MainId: 74084][Trigger: Q7408409bEnterTrigger] TriggerOut")
end

return Q7408409bEnterTrigger
