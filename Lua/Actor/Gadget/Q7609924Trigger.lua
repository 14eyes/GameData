require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609924Trigger = class("Q7609924Trigger", GadgetActorProxy)
Q7609924Trigger.defaultAlias = "Q7609924Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609924Trigger:OnPostDataPrepare()
    print("Q7609924Trigger - OnPostDataPrepare")
    this = self
end

function Q7609924Trigger:OnPostComponentPrepare()
    print("Q7609924Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "6_3_YZT_Enter", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609924Trigger:TriggerIn()
    print("Q7609924Trigger - TriggerIn")
    actorMgr:GetActor("76099"):PlayCutsceneIndex(7609924, function(arg1)
        actorUtils.FinishQuestID(false, 7609924)
        this:DestroySelf()
    end, nil, nil, false)
end

function Q7609924Trigger:PreTriggerIn()
    print("Q7609924Trigger - PreTriggerIn")
end

function Q7609924Trigger:LightUpTriggerIn()
    print("Q7609924Trigger - LightUpTriggerIn")
end

function Q7609924Trigger:TriggerOut()
    print("Q7609924Trigger - TriggerOut")
end

return Q7609924Trigger
