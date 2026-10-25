require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400211_GadgetProtectTrigger = class("Q400211_GadgetProtectTrigger", GadgetActorProxy)
Q400211_GadgetProtectTrigger.defaultAlias = "Q400211_GadgetProtectTrigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400211_GadgetProtectTrigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400211_GadgetProtectTrigger] OnPostDataPrepare")
    this = self
end

function Q400211_GadgetProtectTrigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400211_GadgetProtectTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400211_GadgetProtectTrigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400211_GadgetProtectTrigger] TriggerIn")
end

function Q400211_GadgetProtectTrigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400211_GadgetProtectTrigger] PreTriggerIn")
end

function Q400211_GadgetProtectTrigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400211_GadgetProtectTrigger] LightUpTriggerIn")
end

function Q400211_GadgetProtectTrigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400211_GadgetProtectTrigger] TriggerOut")
    actorMgr:GetActor("4002"):RemoveLocalGadget(70710192, "0")
    this:DestroySelf()
end

return Q400211_GadgetProtectTrigger
