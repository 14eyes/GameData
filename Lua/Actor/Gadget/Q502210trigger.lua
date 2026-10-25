require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502210trigger = class("Q502210trigger", GadgetActorProxy)
Q502210trigger.defaultAlias = "Q502210trigger"
local Q5022ClientConfig = require("Quest/Client/Q5022ClientConfig")

local this
local subIDs = Q5022ClientConfig.SubIDs
local datas = Q5022ClientConfig.Datas
local npcs = Q5022ClientConfig.Npcs
local points = Q5022ClientConfig.Points

function Q502210trigger:OnPostDataPrepare()
    print("Q502210trigger - OnPostDataPrepare")
    this = self
end

function Q502210trigger:OnPostComponentPrepare()
    print("Q502210trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5022)
end

function Q502210trigger:TriggerIn()
    print("Q502210trigger - TriggerIn")
    actorMgr:GetActor("5022"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
    actorUtils.FinishQuestID(false, 502209)
    this:DestroySelf()
end

function Q502210trigger:PreTriggerIn()
    print("Q502210trigger - PreTriggerIn")
end

function Q502210trigger:LightUpTriggerIn()
    print("Q502210trigger - LightUpTriggerIn")
end

function Q502210trigger:TriggerOut()
    print("Q502210trigger - TriggerOut")
end

return Q502210trigger
