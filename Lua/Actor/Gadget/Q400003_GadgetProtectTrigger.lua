require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400003_GadgetProtectTrigger = class("Q400003_GadgetProtectTrigger", GadgetActorProxy)
Q400003_GadgetProtectTrigger.defaultAlias = "Q400003_GadgetProtectTrigger"
local Q4000ClientConfig = require("Quest/Client/Q4000ClientConfig")

local this
local subIDs = Q4000ClientConfig.SubIDs
local npcs = Q4000ClientConfig.Npcs
local points = Q4000ClientConfig.Points
local datas = Q4000ClientConfig.Datas

function Q400003_GadgetProtectTrigger:OnPostDataPrepare()
    print("[MainId: 4000][Trigger: Q400003_GadgetProtectTrigger] OnPostDataPrepare")
    this = self
end

function Q400003_GadgetProtectTrigger:OnPostComponentPrepare()
    print("[MainId: 4000][Trigger: Q400003_GadgetProtectTrigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(23, 15.91429, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400003_GadgetProtectTrigger:TriggerIn()
    print("[MainId: 4000][Trigger: Q400003_GadgetProtectTrigger] TriggerIn")
end

function Q400003_GadgetProtectTrigger:PreTriggerIn()
    print("[MainId: 4000][Trigger: Q400003_GadgetProtectTrigger] PreTriggerIn")
end

function Q400003_GadgetProtectTrigger:LightUpTriggerIn()
    print("[MainId: 4000][Trigger: Q400003_GadgetProtectTrigger] LightUpTriggerIn")
end

function Q400003_GadgetProtectTrigger:TriggerOut()
    print("[MainId: 4000][Trigger: Q400003_GadgetProtectTrigger] TriggerOut")
    actorMgr:GetActor("4000"):RemoveLocalGadget(70710192, "0")
    this:DestroySelf()
end

return Q400003_GadgetProtectTrigger
