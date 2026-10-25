require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402101_TransmitTrigger = class("Q402101_TransmitTrigger", GadgetActorProxy)
Q402101_TransmitTrigger.defaultAlias = "Q402101_TransmitTrigger"
local Q4021ClientConfig = require("Quest/Client/Q4021ClientConfig")

local this
local subIDs = Q4021ClientConfig.SubIDs
local npcs = Q4021ClientConfig.Npcs
local points = Q4021ClientConfig.Points
local datas = Q4021ClientConfig.Datas

function Q402101_TransmitTrigger:OnPostDataPrepare()
    print("[MainId: 4021][Trigger: Q402101_TransmitTrigger] OnPostDataPrepare")
    this = self
end

function Q402101_TransmitTrigger:OnPostComponentPrepare()
    print("[MainId: 4021][Trigger: Q402101_TransmitTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402101_TransmitTrigger:TriggerIn()
    print("[MainId: 4021][Trigger: Q402101_TransmitTrigger] TriggerIn")
    local actor = actorMgr:GetActor("4021")
    if actor:GetQuestVar(402101, 0) == 0 then
        actor:TransmitPlayerWithDialogTextByQuestId(402101, 1, datas.DialogsId, 3, nil, function(arg1)
            actorMgr:GetActor("4021"):SetQuestVarByMainId(0, 1)
        end)
    end

    this:DestroySelf()
end

function Q402101_TransmitTrigger:PreTriggerIn()
    print("[MainId: 4021][Trigger: Q402101_TransmitTrigger] PreTriggerIn")
end

function Q402101_TransmitTrigger:LightUpTriggerIn()
    print("[MainId: 4021][Trigger: Q402101_TransmitTrigger] LightUpTriggerIn")
end

function Q402101_TransmitTrigger:TriggerOut()
    print("[MainId: 4021][Trigger: Q402101_TransmitTrigger] TriggerOut")
end

return Q402101_TransmitTrigger
