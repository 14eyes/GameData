require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3036_Retrun02 = class("Q3036_Retrun02", GadgetActorProxy)
Q3036_Retrun02.defaultAlias = "Q3036_Retrun02"
local Q3036ClientConfig = require("Quest/Client/Q3036ClientConfig")

local this
local subIDs = Q3036ClientConfig.SubIDs
local datas = Q3036ClientConfig.Datas
local npcs = Q3036ClientConfig.Npcs
local points = Q3036ClientConfig.Points

function Q3036_Retrun02:OnPostDataPrepare()
    print("Q3036_Retrun02 - OnPostDataPrepare")
    this = self
end

function Q3036_Retrun02:OnPostComponentPrepare()
    print("Q3036_Retrun02 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(60, 25, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3036)
end

function Q3036_Retrun02:TriggerIn()
    print("Q3036_Retrun02 - TriggerIn")
    actorMgr:GetActor("3036"):TransmitPlayerWithQuestIdByData(303602, 2, datas.TransmitData_Retrun01, nil, nil, nil)
end

function Q3036_Retrun02:PreTriggerIn()
    print("Q3036_Retrun02 - PreTriggerIn")
end

function Q3036_Retrun02:LightUpTriggerIn()
    print("Q3036_Retrun02 - LightUpTriggerIn")
end

function Q3036_Retrun02:TriggerOut()
    print("Q3036_Retrun02 - TriggerOut")
end

return Q3036_Retrun02
