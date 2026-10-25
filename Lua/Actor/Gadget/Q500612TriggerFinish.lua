require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500612TriggerFinish = class("Q500612TriggerFinish", GadgetActorProxy)
Q500612TriggerFinish.defaultAlias = "Q500612TriggerFinish"
local Q5006ClientConfig = require("Quest/Client/Q5006ClientConfig")

local this
local subIDs = Q5006ClientConfig.SubIDs
local datas = Q5006ClientConfig.Datas
local npcs = Q5006ClientConfig.Npcs
local points = Q5006ClientConfig.Points

function Q500612TriggerFinish:OnPostDataPrepare()
    print("Q500612TriggerFinish - OnPostDataPrepare")
    this = self
end

function Q500612TriggerFinish:OnPostComponentPrepare()
    print("Q500612TriggerFinish - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(26.081905, 54.90494, 24.60435, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5006)
end

function Q500612TriggerFinish:TriggerIn()
    print("Q500612TriggerFinish - TriggerIn")
    actorMgr:GetActor("5006"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    actorUtils.FinishQuestID(false, 500612)
    this:DestroySelf()
end

function Q500612TriggerFinish:PreTriggerIn()
    print("Q500612TriggerFinish - PreTriggerIn")
end

function Q500612TriggerFinish:LightUpTriggerIn()
    print("Q500612TriggerFinish - LightUpTriggerIn")
end

function Q500612TriggerFinish:TriggerOut()
    print("Q500612TriggerFinish - TriggerOut")
end

return Q500612TriggerFinish
