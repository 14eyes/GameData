require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7510706TP = class("Q7510706TP", GadgetActorProxy)
Q7510706TP.defaultAlias = "Q7510706TP"
local Q75107ClientConfig = require("Quest/Client/Q75107ClientConfig")

local this
local subIDs = Q75107ClientConfig.SubIDs
local datas = Q75107ClientConfig.Datas
local npcs = Q75107ClientConfig.Npcs
local points = Q75107ClientConfig.Points

function Q7510706TP:OnPostDataPrepare()
    print("Q7510706TP - OnPostDataPrepare")
    this = self
end

function Q7510706TP:OnPostComponentPrepare()
    print("Q7510706TP - OnPostComponentPrepare")
    this:AddComponentTrigger(34.63713, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75107)
end

function Q7510706TP:TriggerIn()
    print("Q7510706TP - TriggerIn")
    actorMgr:GetActor("75107"):TransmitPlayerWithDialogTextByQuestId(7510706, 1, datas.DialogIdsData, 5, nil, nil, nil)
end

function Q7510706TP:PreTriggerIn()
    print("Q7510706TP - PreTriggerIn")
end

function Q7510706TP:LightUpTriggerIn()
    print("Q7510706TP - LightUpTriggerIn")
end

function Q7510706TP:TriggerOut()
    print("Q7510706TP - TriggerOut")
end

return Q7510706TP
