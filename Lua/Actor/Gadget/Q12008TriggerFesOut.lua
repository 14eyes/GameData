require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12008TriggerFesOut = class("Q12008TriggerFesOut", GadgetActorProxy)
Q12008TriggerFesOut.defaultAlias = "Q12008TriggerFesOut"
local Q12008ClientConfig = require("Quest/Client/Q12008ClientConfig")

local mainID = Q12008ClientConfig.MainID
local actorAlias = Q12008ClientConfig.ActorAlias
local subIDs = Q12008ClientConfig.SubIDs
local npcs = Q12008ClientConfig.Npcs
local datas = Q12008ClientConfig.Datas

function Q12008TriggerFesOut:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12008TriggerFesOut:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(85, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12008TriggerFesOut:TriggerIn()
    print("TriggerIn")
end

function Q12008TriggerFesOut:TriggerOut()
    print("Out Q12008trigger02")
    local actor = actorMgr:GetActor(Q12008ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1200809) == 2 then
        actor:FinishQuestID(true, 1200809)
        actor:ClearNarratorTask()
        print("let 1200809 fail")
    end

    if actor:GetSubQuestState(1200806) == 2 then
        actor:FinishQuestID(true, 1200806)
        actor:ClearNarratorTask()
        print("let 1200806 fail")
    end

    if actor:GetSubQuestState(1200810) == 2 then
        actor:FinishQuestID(true, 1200810)
        actor:ClearNarratorTask()
        print("let 1200810 fail")
    end

    if actor:GetSubQuestState(1200807) == 2 then
        actor:FinishQuestID(true, 1200807)
        actor:ClearNarratorTask()
        print("let 1200807 fail")
    end

    if actor:GetSubQuestState(1200811) == 2 then
        actor:FinishQuestID(true, 1200811)
        actor:ClearNarratorTask()
        print("let 1200811 fail")
    end

    if actor:GetSubQuestState(1200808) == 2 then
        actor:FinishQuestID(true, 1200808)
        actor:ClearNarratorTask()
        print("let 1200808 fail")
    end

    if actor:GetSubQuestState(1200812) == 2 then
        actor:FinishQuestID(true, 1200812)
        actor:ClearNarratorTask()
        print("let 1200812 fail")
    end

    if actor:GetSubQuestState(1200816) == 2 then
        actor:FinishQuestID(true, 1200816)
        actor:ClearNarratorTask()
        print("let 1200816 fail")
    end

    self:DestroySelf()
end

return Q12008TriggerFesOut
