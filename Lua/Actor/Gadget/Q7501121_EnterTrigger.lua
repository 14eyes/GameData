require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501121_EnterTrigger = class("Q7501121_EnterTrigger", GadgetActorProxy)
Q7501121_EnterTrigger.defaultAlias = "Q7501121_EnterTrigger"
local Q75011ClientConfig = require("Quest/Client/Q75011ClientConfig")

local this
local subIDs = Q75011ClientConfig.SubIDs
local npcs = Q75011ClientConfig.Npcs
local datas = Q75011ClientConfig.Datas

function Q7501121_EnterTrigger:OnPostDataPrepare()
    print("[MainId: 75011][Trigger: Q7501121_EnterTrigger] OnPostDataPrepare")
    this = self
end

function Q7501121_EnterTrigger:OnPostComponentPrepare()
    print("[MainId: 75011][Trigger: Q7501121_EnterTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(18.61435, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75011)
end

function Q7501121_EnterTrigger:TriggerIn()
    print("[MainId: 75011][Trigger: Q7501121_EnterTrigger] TriggerIn")
    local actor = actorMgr:GetActor("75011")
    actor:QuestNarratorTask(datas.N7501102)
    actor:CallDelayByQuest("", 2, function(arg1)
        local actor = actorMgr:GetActor("75011")
        actorUtils.FinishQuestID(false, 7501121)
    end)

    this:DestroySelf()
end

function Q7501121_EnterTrigger:PreTriggerIn()
    print("[MainId: 75011][Trigger: Q7501121_EnterTrigger] PreTriggerIn")
end

function Q7501121_EnterTrigger:LightUpTriggerIn()
    print("[MainId: 75011][Trigger: Q7501121_EnterTrigger] LightUpTriggerIn")
end

function Q7501121_EnterTrigger:TriggerOut()
    print("[MainId: 75011][Trigger: Q7501121_EnterTrigger] TriggerOut")
end

return Q7501121_EnterTrigger
