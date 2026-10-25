require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q80003_TriggerIn_Test = class("Q80003_TriggerIn_Test", GadgetActorProxy)
Q80003_TriggerIn_Test.defaultAlias = "Q80003_TriggerIn_Test"
local Q800ClientConfig = require("Quest/Client/Q800ClientConfig")

local this
local subIDs = Q800ClientConfig.SubIDs
local npcs = Q800ClientConfig.Npcs
local datas = Q800ClientConfig.Datas

function Q80003_TriggerIn_Test:OnPostDataPrepare()
    print("[MainId: 800][Trigger: Q80003_TriggerIn_Test] OnPostDataPrepare")
    this = self
end

function Q80003_TriggerIn_Test:OnPostComponentPrepare()
    print("[MainId: 800][Trigger: Q80003_TriggerIn_Test] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q80003_TriggerIn_Test:TriggerIn()
    print("[MainId: 800][Trigger: Q80003_TriggerIn_Test] TriggerIn")
    actorMgr:GetActor("800"):TransmitPlayerByQuestId(80040, 1, function(arg1)
        actorUtils.FinishQuestID(false, 80040)
    end)

    this:DestroySelf()
end

function Q80003_TriggerIn_Test:TriggerOut()
    print("[MainId: 800][Trigger: Q80003_TriggerIn_Test] TriggerOut")
end

return Q80003_TriggerIn_Test
