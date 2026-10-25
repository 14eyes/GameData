require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011419baodi = class("Q4011419baodi", GadgetActorProxy)
Q4011419baodi.defaultAlias = "Q4011419baodi"
local Q40114ClientConfig = require("Quest/Client/Q40114ClientConfig")

local this
local subIDs = Q40114ClientConfig.SubIDs
local npcs = Q40114ClientConfig.Npcs
local points = Q40114ClientConfig.Points
local datas = Q40114ClientConfig.Datas

function Q4011419baodi:OnPostDataPrepare()
    print("[MainId: 40114][Trigger: Q4011419baodi] OnPostDataPrepare")
    this = self
end

function Q4011419baodi:OnPostComponentPrepare()
    print("[MainId: 40114][Trigger: Q4011419baodi] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011419baodi:TriggerIn()
    print("[MainId: 40114][Trigger: Q4011419baodi] TriggerIn")
    if actorUtils.GetLocalAvatarGlobalValue("GV_IsInRollerCoaster") == 1 then
        actorUtils.FinishQuestID(false, 4011419)
        this:DestroySelf()
    end
end

function Q4011419baodi:PreTriggerIn()
    print("[MainId: 40114][Trigger: Q4011419baodi] PreTriggerIn")
end

function Q4011419baodi:LightUpTriggerIn()
    print("[MainId: 40114][Trigger: Q4011419baodi] LightUpTriggerIn")
end

function Q4011419baodi:TriggerOut()
    print("[MainId: 40114][Trigger: Q4011419baodi] TriggerOut")
end

return Q4011419baodi
