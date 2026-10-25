require("Actor/ActorCommon")
local EntityActorProxy = require("Actor/EntityActorProxy")

local GadgetActorProxy = class("GadgetActorProxy", EntityActorProxy)
GadgetActorProxy.actorType = ActorType.GADGET_ACTOR
local super

function GadgetActorProxy:OnPreInit()
    super = self.__super
    super:OnPreInit()
end

function GadgetActorProxy:PreGetAlias()
    return nil
end

function GadgetActorProxy:CreateGadgetUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.GADGET_ACTOR, arg1, self.metaPath)
    if self.bornPos == nil then
        self.bornPos = M.Pos(0, 0, 0)
    end

    if self.bornDir == nil then
        self.bornDir = M.Pos(0, 0, 0)
    end

    local gadgetActor = actorUtils.CreateGadgetActor(self.configID, self.bornPos, self.bornDir, actor, self.actorData)
    return gadgetActor
end

function GadgetActorProxy:CreateUActor(arg1)
    return self:CreateGadgetUActor(arg1)
end

function GadgetActorProxy:OnPostInit()
    if self.uActor ~= nil then
        self.uActor:TryStartActor()
    end

    self:OnPostDataPrepare()
    self:OnPostComponentPrepare()
    self:OnUActorPostInit()
end

function GadgetActorProxy:OnPostComponentPrepare() end

function GadgetActorProxy:OnUActorPostInit()
    if self.uActor ~= nil then
        actorUtils.PostInitGadgetActor(self.uActor)
    end
end

GadgetActorProxy.isTriggerIn = false
GadgetActorProxy.checkTimeGap = 0.1
GadgetActorProxy.timeCnt = 0
GadgetActorProxy.targetTime = 0
GadgetActorProxy.triggerInHandler = nil
GadgetActorProxy.triggerOutHandler = nil
GadgetActorProxy.triggerTickHandler = nil

function GadgetActorProxy:DefaultTriggerIn()
    self.isTriggerIn = true
    if self.triggerInHandler ~= nil then
        self:triggerInHandler()
    end
end

function GadgetActorProxy:DefaultTriggerOut()
    self.isTriggerIn = false
    if self.triggerOutHandler ~= nil then
        self:triggerOutHandler()
    end
end

GadgetActorProxy.triggerDelayOutHandler = nil

function GadgetActorProxy:DefaultTriggerDelayOut()
    if self.triggerDelayOutHandler ~= nil then
        self:triggerDelayOutHandler()
    end

    self:DestroySelf()
end

function GadgetActorProxy:CheckDelayTimeOut()
    if self.isTriggerIn then
        self.timeCnt = 0
    else
        self.timeCnt = self.timeCnt + self.checkTimeGap
        if self.timeCnt >= self.targetTime then
            self:DefaultTriggerDelayOut()
            self.timeCnt = 0
        end
    end
end

function GadgetActorProxy:AddComponentTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    if arg9 == nil then
        arg9 = 0
    end

    self.uActor:AddSimpleTrigger(arg9, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
end

function GadgetActorProxy:AddSimpleTriggerWithDiffDistance(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    if arg10 == nil then
        arg10 = 0
    end

    self.uActor:AddSimpleTriggerWithDiffDistance(arg10, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end

function GadgetActorProxy:AddCubeShapeTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    if arg4 == nil then
        arg4 = false
    end

    if arg11 == nil then
        arg11 = 0
    end

    self.uActor:AddCubeShapeTrigger(arg11, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
end

function GadgetActorProxy:AddCylinderShapeTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    if arg3 == nil then
        arg3 = false
    end

    if arg10 == nil then
        arg10 = 0
    end

    self.uActor:AddCylinderShapeTrigger(arg10, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end

function GadgetActorProxy:AddNpcSimpleTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    self.uActor:AddNpcSimpleTrigger(arg1, self:ChangeToRealAlias(arg1, arg2), arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end

function GadgetActorProxy:AddNpcCubeShapeTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    if arg7 == nil then
        arg7 = false
    end

    self.uActor:AddNpcCubeShapeTrigger(arg1, self:ChangeToRealAlias(arg1, arg2), arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
end

function GadgetActorProxy:AddNpcCylinderShapeTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    if arg6 == nil then
        arg6 = false
    end

    self.uActor:AddNpcCylinderShapeTrigger(arg1, self:ChangeToRealAlias(arg1, arg2), arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
end

function GadgetActorProxy:SetTriggerConditionInVehicle(triggerConditionInVehicle)
    self.uActor:SetTriggerConditionInVehicle(triggerConditionInVehicle)
end

function GadgetActorProxy:SetTriggerInHintTextMapIdOnCond(triggerInHintTextMapIdOnCond)
    self.uActor:SetTriggerInHintTextMapIdOnCond(triggerInHintTextMapIdOnCond)
end

function GadgetActorProxy:ChangeToRealAlias(arg1, arg2)
    if arg2 == nil then
        return arg2
    end

    local actor = actorMgr:GetActor(tostring(arg1))
    if actor == nil then
        return arg2
    end

    local tbl = {}
    for i, v in ipairs(arg2) do
        local realAlias = actor:GetRealAlias(v)
        table.insert(tbl, #tbl + 1, realAlias)
    end

    return tbl
end

function GadgetActorProxy:AddCombinedSimpleTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    if nil == arg3 then
        arg3 = true
    end

    if arg10 == nil then
        arg10 = 0
    end

    self.uActor:AddCombinedSimpleTrigger(arg10, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end

function GadgetActorProxy:AddCombinedCubeShapeTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
    if nil == arg3 then
        arg3 = true
    end

    if arg12 == nil then
        arg12 = 0
    end

    self.uActor:AddCombinedCubeShapeTrigger(arg12, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
end

function GadgetActorProxy:AddCombinedCylinderShapeTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    if nil == arg3 then
        arg3 = true
    end

    if arg11 == nil then
        arg11 = 0
    end

    self.uActor:AddCombinedCylinderShapeTrigger(arg11, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
end

function GadgetActorProxy:AddQuestComponentTrigger(arg1, arg2, arg3, arg4, callback, arg6, arg7)
    local func
    if nil ~= callback then
        function func(arg1_2)
            if actorUtils.IsMainQuestActive(arg1) ~= true then
                return
            end

            callback(arg1_2)
        end
    end

    local v
    if nil ~= arg6 then
        function v(arg1_2, arg2)
            if actorUtils.IsMainQuestActive(arg1) ~= true then
                return
            end

            arg6(arg1_2, arg2)
        end
    end

    local func2
    if nil ~= arg7 then
        function func2(arg1_2)
            if actorUtils.IsMainQuestActive(arg1) ~= true then
                return
            end

            arg7(arg1_2)
        end
    end

    self.uActor:AddSimpleTrigger(0, arg2, arg3, arg4, func, v, func2)
end

function GadgetActorProxy:AddTimeDelayOutTrigger(arg1, arg2, targetTime, arg4, triggerInHandler, triggerOutHandler, triggerDelayOutHandler)
    self.timeCnt = 0
    self.targetTime = targetTime
    self.triggerInHandler = triggerInHandler
    self.triggerOutHandler = triggerOutHandler
    self.triggerDelayOutHandler = triggerDelayOutHandler
    self.uActor:AddSimpleTrigger(0, arg1, arg2, arg4, self.DefaultTriggerIn, self.DefaultTriggerOut, self.CheckDelayTimeOut)
end

function GadgetActorProxy:AddCommonTrigger(arg1, arg2, arg3, arg4)
    self.uActor:AddCommonTrigger(arg1, arg2, arg3, arg4)
end

function GadgetActorProxy:AddCommonPolygonTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg7 == nil then
        arg7 = 0
    end

    self.uActor:AddPolygonTrigger(arg7, arg1, arg2, arg3, arg4, false, false, arg5, arg6)
end

function GadgetActorProxy:AddNormalPolygonTrigger(arg1, arg2, arg3, arg4)
    if arg4 == nil then
        arg4 = 0
    end

    self.uActor:AddPolygonTrigger(arg4, arg1, arg2, 10, false, false, false, arg3, nil)
end

function GadgetActorProxy:AddPolygonTrigger(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg7 == nil then
        arg7 = 0
    end

    self.uActor:AddPolygonTrigger(arg7, arg1, arg2, 0.2, false, true, true, arg3, arg4, arg5, arg6)
end

function GadgetActorProxy:DestroySelf()
    self:ClearInfo()
    self:Destroy(false)
    actorMgr:ClearActor(self.alias)
end

function GadgetActorProxy:SetGlobalValue(arg1, arg2)
    if arg1 == nil then
        return
    end

    self.uActor:SetGlobalValue(arg1, arg2)
end

function GadgetActorProxy:GetGlobalValue(arg1)
    if arg1 == nil then
        return 0
    end

    self.uActor:GetGlobalValue(arg1)
end

return GadgetActorProxy
