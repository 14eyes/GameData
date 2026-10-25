require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7310314_EnterTrigger = class("Q7310314_EnterTrigger", GadgetActorProxy)
Q7310314_EnterTrigger.defaultAlias = "Q7310314_EnterTrigger"
local Q73103ClientConfig = require("Quest/Client/Q73103ClientConfig")

local this
local subIDs = Q73103ClientConfig.SubIDs
local npcs = Q73103ClientConfig.Npcs
local datas = Q73103ClientConfig.Datas

function Q7310314_EnterTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7310314_EnterTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7310314_EnterTrigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73103")
    actor:NarratorOnlyTaskByData(datas.Narrator_05, function(arg1)
        actorUtils.FinishQuestID(false, 7310314)
    end)

    actor:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "T7310315_N20843").pos, 0, 3, false, false)
    this:DestroySelf()
end

function Q7310314_EnterTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7310314_EnterTrigger
