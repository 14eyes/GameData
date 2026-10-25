require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400003TriggerDog1 = class("Q7400003TriggerDog1", GadgetActorProxy)
Q7400003TriggerDog1.defaultAlias = "Q7400003TriggerDog1"
local Q74000ClientConfig = require("Quest/Client/Q74000ClientConfig")

local this
local subIDs = Q74000ClientConfig.SubIDs
local npcs = Q74000ClientConfig.Npcs
local points = Q74000ClientConfig.Points
local datas = Q74000ClientConfig.Datas

function Q7400003TriggerDog1:OnPostDataPrepare()
    print("[MainId: 74000][Trigger: Q7400003TriggerDog1] OnPostDataPrepare")
    this = self
end

function Q7400003TriggerDog1:OnPostComponentPrepare()
    print("[MainId: 74000][Trigger: Q7400003TriggerDog1] OnPostComponentPrepare")
end

function Q7400003TriggerDog1:TriggerIn()
    print("[MainId: 74000][Trigger: Q7400003TriggerDog1] TriggerIn")
    actorUtils.FinishQuestID(false, 7400003)
    this:DestroySelf()
end

function Q7400003TriggerDog1:PreTriggerIn()
    print("[MainId: 74000][Trigger: Q7400003TriggerDog1] PreTriggerIn")
end

function Q7400003TriggerDog1:LightUpTriggerIn()
    print("[MainId: 74000][Trigger: Q7400003TriggerDog1] LightUpTriggerIn")
end

function Q7400003TriggerDog1:TriggerOut()
    print("[MainId: 74000][Trigger: Q7400003TriggerDog1] TriggerOut")
end

return Q7400003TriggerDog1
