require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011420baodi = class("Q4011420baodi", GadgetActorProxy)
Q4011420baodi.defaultAlias = "Q4011420baodi"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011420baodi:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011420baodi] OnPostDataPrepare")
    this = self
end

function Q4011420baodi:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011420baodi] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011420baodi:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011420baodi] TriggerIn")
    if actorUtils.GetLocalAvatarGlobalValue("GV_IsInRollerCoaster") == 1 then
        actorUtils.FinishQuestID(false, 4011420)
        this:DestroySelf()
    end
end

function Q4011420baodi:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011420baodi] PreTriggerIn")
end

function Q4011420baodi:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011420baodi] LightUpTriggerIn")
end

function Q4011420baodi:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011420baodi] TriggerOut")
end

return Q4011420baodi
