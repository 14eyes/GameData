require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7665106Trigger = class("Q7665106Trigger", GadgetActorProxy)
Q7665106Trigger.defaultAlias = "Q7665106Trigger"
local Q76651ClientConfig = require("Quest/Client/Q76651ClientConfig")

local this
local subIDs = Q76651ClientConfig.SubIDs
local datas = Q76651ClientConfig.Datas
local npcs = Q76651ClientConfig.Npcs
local points = Q76651ClientConfig.Points

function Q7665106Trigger:OnPostDataPrepare()
    print("Q7665106Trigger - OnPostDataPrepare")
    this = self
end

function Q7665106Trigger:OnPostComponentPrepare()
    print("Q7665106Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76651)
end

function Q7665106Trigger:TriggerIn()
    print("Q7665106Trigger - TriggerIn")
    actorMgr:GetActor("76651"):TransmitPlayerWithDialogTextByQuestId(7665106, 1, datas.DialogIdsData, 0, nil, nil, nil)
    this:DestroySelf()
end

function Q7665106Trigger:PreTriggerIn()
    print("Q7665106Trigger - PreTriggerIn")
end

function Q7665106Trigger:LightUpTriggerIn()
    print("Q7665106Trigger - LightUpTriggerIn")
end

function Q7665106Trigger:TriggerOut()
    print("Q7665106Trigger - TriggerOut")
end

return Q7665106Trigger
