require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7402616Trigger1 = class("Q7402616Trigger1", GadgetActorProxy)
Q7402616Trigger1.defaultAlias = "Q7402616Trigger1"
local Q74026ClientConfig = require("Quest/Client/Q74026ClientConfig")

local this
local subIDs = Q74026ClientConfig.SubIDs
local npcs = Q74026ClientConfig.Npcs
local points = Q74026ClientConfig.Points
local datas = Q74026ClientConfig.Datas

function Q7402616Trigger1:OnPostDataPrepare()
    print("[MainId: 74026][Trigger: Q7402616Trigger1] OnPostDataPrepare")
    this = self
end

function Q7402616Trigger1:OnPostComponentPrepare()
    print("[MainId: 74026][Trigger: Q7402616Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7402616Trigger1:TriggerIn()
    print("[MainId: 74026][Trigger: Q7402616Trigger1] TriggerIn")
    local actor = actorMgr:GetActor("74026")
    if actor:GetQuestVar(74026, 3) == 0 then
        actor:NarratorOnlyTaskByData(datas.Difference, function(arg1)
            this:DestroySelf()
        end, 74026)

        actor:SetQuestVarByMainId(3, 1)
    else
        this:DestroySelf()
    end
end

function Q7402616Trigger1:PreTriggerIn()
    print("[MainId: 74026][Trigger: Q7402616Trigger1] PreTriggerIn")
end

function Q7402616Trigger1:LightUpTriggerIn()
    print("[MainId: 74026][Trigger: Q7402616Trigger1] LightUpTriggerIn")
end

function Q7402616Trigger1:TriggerOut()
    print("[MainId: 74026][Trigger: Q7402616Trigger1] TriggerOut")
end

return Q7402616Trigger1
