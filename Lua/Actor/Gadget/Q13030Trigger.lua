require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13030Trigger = class("Q13030Trigger", GadgetActorProxy)
Q13030Trigger.defaultAlias = "Q13030Trigger"
local Q13030ClientConfig = require("Quest/Client/Q13030ClientConfig")

local this
local subIDs = Q13030ClientConfig.SubIDs
local npcs = Q13030ClientConfig.Npcs
local points = Q13030ClientConfig.Points
local datas = Q13030ClientConfig.Datas

function Q13030Trigger:OnPostDataPrepare()
    print("[MainId: 13030][Trigger: Q13030Trigger] OnPostDataPrepare")
    this = self
end

function Q13030Trigger:OnPostComponentPrepare()
    print("[MainId: 13030][Trigger: Q13030Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13030Trigger:TriggerIn()
    print("[MainId: 13030][Trigger: Q13030Trigger] TriggerIn")
    actorMgr:GetActor("13030"):TransmitPlayerWithDialogTextByQuestId(1303002, 1, datas.DialogsId, 0)
    actorUtils.FinishQuestID(false, 1303002)
    this:DestroySelf()
end

function Q13030Trigger:PreTriggerIn()
    print("[MainId: 13030][Trigger: Q13030Trigger] PreTriggerIn")
end

function Q13030Trigger:LightUpTriggerIn()
    print("[MainId: 13030][Trigger: Q13030Trigger] LightUpTriggerIn")
end

function Q13030Trigger:TriggerOut()
    print("[MainId: 13030][Trigger: Q13030Trigger] TriggerOut")
end

return Q13030Trigger
