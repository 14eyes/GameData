require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401008_TriggerIn = class("Q401008_TriggerIn", GadgetActorProxy)
Q401008_TriggerIn.defaultAlias = "Q401008_TriggerIn"
local Q4010ClientConfig = require("Quest/Client/Q4010ClientConfig")

local this
local subIDs = Q4010ClientConfig.SubIDs
local npcs = Q4010ClientConfig.Npcs
local points = Q4010ClientConfig.Points
local datas = Q4010ClientConfig.Datas

function Q401008_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q401008_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401008_TriggerIn:TriggerIn()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn] TriggerIn")
    this:DestroySelf()
end

function Q401008_TriggerIn:PreTriggerIn()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn] PreTriggerIn")
end

function Q401008_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn] LightUpTriggerIn")
    actorMgr:GetActor("4010"):ShowBlackScreenWithDialogText(0, 1.5, 0.5, function(arg1)
        actorMgr:GetActor("4010"):RequestInteraction(npcs.Npc1080Data.alias)
    end, nil, nil, 0, false, true)
end

function Q401008_TriggerIn:TriggerOut()
    print("[MainId: 4010][Trigger: Q401008_TriggerIn] TriggerOut")
end

return Q401008_TriggerIn
