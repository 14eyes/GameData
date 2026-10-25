require("Actor/ActorCommon")
local BaseActorProxy = require("Actor/BaseActorProxy")

local EntityActorProxy = class("EntityActorProxy", BaseActorProxy)
local super

function EntityActorProxy:OnPreInit()
    super = self.__super
end

function EntityActorProxy:PreGetAlias()
    return nil
end

EntityActorProxy.configID = nil
EntityActorProxy.bornPos = nil
EntityActorProxy.bornDir = nil
EntityActorProxy.bornShoesOffset = nil
EntityActorProxy.isOrphan = false
EntityActorProxy.extMetaInfo = nil
EntityActorProxy.isNetwork = false
EntityActorProxy.actorType = ActorType.BASE_ENTITY

function EntityActorProxy:OnInit(alias)
    self.alias = alias
    self.uActor = self:CreateUActor(alias)
    self:Register()
end

function EntityActorProxy:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.BASE_ENTITY, arg1, self.metaPath)
    return actor
end

function EntityActorProxy:Register() end
function EntityActorProxy:Start() end

function EntityActorProxy:GetPropValue(arg1)
    return self.uActor:GetPropValue(arg1)
end

function EntityActorProxy:WalkTo(arg1)
    if arg1 == nil then
        actorUtils.ActorDebugError(self.alias .. "lua position not invalid")
        return
    end

    self.uActor:WalkTo(arg1)
end

function EntityActorProxy:AdvWalkTo(arg1, arg2, arg3)
    if arg1 == nil then
        actorUtils.ActorDebugError(self.alias .. "lua position not invalid")
        return
    end

    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    self.uActor:AdvWalkTo(arg1, arg2, arg3)
end

function EntityActorProxy:MoveToOnPlatform(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    self.uActor:MoveToOnPlatform(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
end

function EntityActorProxy:WalkToRoute(arg1)
    self.uActor:WalkToRoute(arg1)
end

function EntityActorProxy:AdvWalkToRoute(arg1, arg2, arg3, arg4, arg5, arg6)
    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    if arg4 == nil then
        arg4 = true
    end

    if arg5 == nil then
        arg5 = false
    end

    if arg6 == nil then
        arg6 = false
    end

    self.uActor:AdvWalkToRoute(arg1, arg2, arg3, arg4, arg5, arg6)
end

function EntityActorProxy:WalkToRouteByData(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    self.uActor:WalkToRouteByData(arg1, arg2, arg3)
end

function EntityActorProxy:RunTo(arg1)
    if arg1 == nil then
        actorUtils.ActorDebugError(self.alias .. "lua position not invalid")
        return
    end

    self.uActor:RunTo(arg1)
end

function EntityActorProxy:AdvRunTo(arg1, arg2, arg3)
    if arg1 == nil then
        actorUtils.ActorDebugError(self.alias .. "lua position not invalid")
        return
    end

    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    self.uActor:AdvRunTo(arg1, arg2, arg3)
end

function EntityActorProxy:RunToRoute(arg1)
    self.uActor:RunToRoute(arg1)
end

function EntityActorProxy:AdvRunToRoute(arg1, arg2, arg3, arg4, arg5, arg6)
    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    if arg4 == nil then
        arg4 = true
    end

    if arg5 == nil then
        arg5 = false
    end

    if arg6 == nil then
        arg6 = false
    end

    self.uActor:AdvRunToRoute(arg1, arg2, arg3, arg4, arg5, arg6)
end

function EntityActorProxy:RunToRouteByData(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    self.uActor:RunToRouteByData(arg1)
end

function EntityActorProxy:JumpToPointTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    self:JumpToPointTaskInternal(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function EntityActorProxy:JumpToPointTaskInternal(targetPos, jumpFreeStyleType, arg3, arg4, arg5, arg6, arg7)
    self:ClearFollowTask()
    self.targetPos = targetPos
    self.jumpFreeStyleType = jumpFreeStyleType
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    task:StartEvent("+", self.StartJumpToPos)
    task:TickEvent("+", self.CheckArrived)
    if arg3 ~= nil then
        task:FinishEvent("+", arg3)
    end

    if arg4 ~= nil then
        task:PauseEvent("+", arg4)
    end

    if arg5 ~= nil then
        task:ResumeEvent("+", arg5)
    end

    if arg6 ~= nil then
        task:DisappearEvent("+", arg6)
    end

    if arg7 ~= nil then
        task:DestroyEvent("+", arg7)
    end
end

function EntityActorProxy:StartJumpToPos(arg1)
    self.uActor:JumpTo(self.targetPos, self.jumpFreeStyleType)
end

function EntityActorProxy:JumpTo(arg1, arg2)
    self.uActor:JumpTo(arg1, arg2)
end

function EntityActorProxy:Standby()
    self.uActor:Standby(false)
end

function EntityActorProxy:StandbyNoResume()
    self.uActor:Standby(true)
end

function EntityActorProxy:ResumeMove()
    self.uActor:ResumeMove()
end

function EntityActorProxy:PlayDefault()
    self.uActor:PlayDefault()
end

function EntityActorProxy:SyncPos(arg1)
    self.uActor:SyncPos(arg1)
end

function EntityActorProxy:DoingFreeStyle()
    return self.uActor:DoingFreeStyle()
end

function EntityActorProxy:SwitchNpcEventPatternSuite(arg1)
    if arg1 == nil then
        arg1 = "default"
    end

    return self.uActor:SwitchNpcEventPatternSuite(arg1)
end

function EntityActorProxy:DoFreeStyleWithSuite(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg2 == nil then
        arg2 = true
    end

    if nil == arg4 then
        arg4 = true
    end

    if arg5 == nil then
        arg5 = true
    end

    if arg6 == nil then
        arg6 = true
    end

    if arg7 == nil then
        arg7 = false
    end

    self.uActor:DoFreeStyleWithSuite(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
end

function EntityActorProxy:DoFreeStyle(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg2 == nil then
        arg2 = true
    end

    if nil == arg4 then
        arg4 = true
    end

    if arg5 == nil then
        arg5 = true
    end

    if arg6 == nil then
        arg6 = true
    end

    if arg7 == nil then
        arg7 = false
    end

    self.uActor:DoFreeStyle(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function EntityActorProxy:DoFreeStyleNoResetRoute(arg1, arg2, arg3, arg4, arg5)
    if arg2 == nil then
        arg2 = true
    end

    if nil == arg4 then
        arg4 = true
    end

    if setDefaultFreeStyle == nil then
        setDefaultFreeStyle = false
    end

    self.uActor:DoFreeStyle(arg1, arg2, arg3, arg4, false, true, setDefaultFreeStyle)
end

function EntityActorProxy:DoFreeStateTrigger()
    self.uActor:DoFreeStateTrigger()
end

function EntityActorProxy:CancelDefaultFreeStyle()
    self.uActor:CancelDefaultFreeStyle()
end

function EntityActorProxy:CancelDefaultFreeStyleEx()
    self.uActor:CancelDefaultFreeStyle()
end

function EntityActorProxy:InvokeOnResetFreeStyle(arg1) end

function EntityActorProxy:SetNpcAnimator(arg1, arg2, arg3, arg4, arg5, arg6)
    if arg6 == nil then
        arg6 = true
    end

    self.uActor:SetNpcAnimator(arg1, arg2, arg3, arg4, arg5, arg6)
end

function EntityActorProxy:SetAnimatorLayerWeight(arg1, arg2, arg3)
    if arg3 == nil then
        arg3 = true
    end

    self.uActor:SetAnimatorLayerWeight(arg1, arg2, arg3)
end

function EntityActorProxy:EnableFootPrint(arg1, arg2)
    if arg2 == nil then
        arg2 = true
    end

    self.uActor:EnableFootPrint(arg1, arg2)
end

function EntityActorProxy:InvokeOnFinalTalkFinish() end

function EntityActorProxy:TurnTo(arg1)
    self.uActor:TurnTo(arg1)
end

function EntityActorProxy:TurnToAvatar()
    self.uActor:TurnToAvatar()
end

function EntityActorProxy:GetPos()
    return self.uActor:GetPos()
end

function EntityActorProxy:GetEuler()
    return self.uActor:GetEuler()
end

function EntityActorProxy:GetForward()
    return self.uActor:GetForward()
end

function EntityActorProxy:GetDistFromAvatarToSelf()
    return self.uActor:GetDistFromAvatarToSelf()
end

function EntityActorProxy:GetDirFromSelfToAvatar()
    return self.uActor:GetDirFromSelfToAvatar()
end

function EntityActorProxy:IsInIdle()
    return self.uActor:IsInIdle()
end

function EntityActorProxy:IsTalking()
    return self.uActor:IsTalking()
end

function EntityActorProxy:SetPosAndTurnTo(arg1, arg2, arg3)
    if arg3 == nil then
        arg3 = true
    end

    self.uActor:SetPosAndTurnTo(arg1, arg2, arg3)
end

function EntityActorProxy:SetPos(arg1, arg2)
    if arg2 == nil then
        arg2 = true
    end

    self.uActor:SetPos(arg1, arg2)
end

function EntityActorProxy:SetShoesOffsetOnReuse(shoesOffsetOnReuse)
    self.uActor:SetShoesOffsetOnReuse(shoesOffsetOnReuse)
end

function EntityActorProxy:SetFloatingHeight(floatingHeight)
    actorUtils.SetFloatingHeight(self.alias, floatingHeight, 0)
    if self:IsActorStart() then
        self.uActor:SetFloatingHeight(floatingHeight)
    end
end

function EntityActorProxy:SetFloatingHeightNoPerform(floatingHeightNoPerform)
    actorUtils.SetFloatingHeight(self.alias, floatingHeightNoPerform, 1)
    if self:IsActorStart() then
        self.uActor:SetFloatingHeightNoPerform(floatingHeightNoPerform)
    end
end

function EntityActorProxy:SetFloatingHeightDirectly(floatingHeightDirectly)
    actorUtils.SetFloatingHeight(self.alias, floatingHeightDirectly, 2)
    if self:IsActorStart() then
        self.uActor:SetFloatingHeightDirectly(floatingHeightDirectly)
    end
end

function EntityActorProxy:HasFloatingComponent()
    return self.uActor:HasFloatingComponent()
end

function EntityActorProxy:IsCanPauseFloatingMove()
    return self.uActor:IsCanPauseFloatingMove()
end

function EntityActorProxy:PauseScriptedMove()
    self.uActor:PauseScriptedMove()
end

function EntityActorProxy:ResumeScriptedMove()
    self.uActor:ResumeScriptedMove()
end

function EntityActorProxy:SetPosAndTurnOnPlatform(posAndTurnOnPlatform)
    if posAndTurnOnPlatform == nil then
        return
    end

    self.uActor:SetPosAndTurnOnPlatform(posAndTurnOnPlatform)
end

function EntityActorProxy:GetEuler()
    return self.uActor:GetEuler()
end

function EntityActorProxy:IsHided(arg1)
    return self.uActor:IsHided(arg1)
end

function EntityActorProxy:Hide(arg1)
    self.uActor:Hide(arg1, true)
end

function EntityActorProxy:HideSelf()
    self:Stop()
    self:Standby()
    self:Hide(true)
end

function EntityActorProxy:ShowSelf()
    self:Hide(false)
end

function EntityActorProxy:CheckShow()
    self.uActor:CheckShow()
end

function EntityActorProxy:SitOnChair(arg1, arg2, arg3, arg4)
    if arg2 == nil then
        arg2 = false
    end

    if arg3 == nil then
        arg3 = false
    end

    if arg4 == nil then
        arg4 = false
    end

    self.uActor:SitOnChair(arg1, arg2, arg3)
end

function EntityActorProxy:SitOnTargetChair(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg5 == nil then
        arg5 = false
    end

    if arg6 == nil then
        arg6 = false
    end

    if arg7 == nil then
        arg7 = false
    end

    self.uActor:SitOnTargetChair(arg1, arg2, arg3, arg4, arg5, arg6)
end

function EntityActorProxy:StandFromChair(arg1)
    self.uActor:StandFromChair(arg1)
end

function EntityActorProxy:StandFromChairEx(arg1)
    self.uActor:StandFromChair(arg1)
end

function EntityActorProxy:SetWalkSpeedRatio(arg1, arg2)
    self.uActor:SetWalkSpeedRatio(arg1, arg2 ~= false)
end

function EntityActorProxy:ResetWalkSpeedRatio()
    self.uActor:ResetWalkSpeedRatio()
end

function EntityActorProxy:SetFloatingWalkSpeedRatio(arg1, arg2)
    self.uActor:SetFloatingWalkSpeedRatio(arg1, arg2 ~= false)
end

function EntityActorProxy:ResetFloatingWalkSpeedRatio()
    self.uActor:ResetFloatingWalkSpeedRatio()
end

function EntityActorProxy:EnableAI(arg1)
    self.uActor:EnableAI(arg1)
end

function EntityActorProxy:EnableInteraction(arg1)
    self.uActor:EnableInteraction(arg1)
end

function EntityActorProxy:EnableInteractionWithUI(arg1)
    self.uActor:EnableInteractionWithUI(arg1)
end

function EntityActorProxy:EnableInteractionWithUIEx(arg1)
    self.uActor:EnableInteractionWithUIEx(arg1)
end

EntityActorProxy.targetPos = nil
EntityActorProxy.jumpFreeStyleType = 0
EntityActorProxy.tarFloatingHeight = 0
EntityActorProxy.floatingMove = false
EntityActorProxy.routePoints = nil
EntityActorProxy.routeConfig = nil

function EntityActorProxy:StartWalkTo(arg1)
    self:AdvWalkTo(self.targetPos, self.tarFloatingHeight, self.floatingMove)
end

function EntityActorProxy:StartWalkToRoute(arg1)
    self:AdvWalkToRoute(self.routePoints, self.tarFloatingHeight, self.floatingMove, true, false)
end

function EntityActorProxy:StartWalkToRouteByData(arg1)
    self:WalkToRouteByData(self.routeConfig, self.tarFloatingHeight, self.floatingMove)
end

function EntityActorProxy:StartRunTo(arg1)
    self:AdvRunTo(self.targetPos, self.tarFloatingHeight, self.floatingMove)
end

function EntityActorProxy:StartRunToRoute(arg1)
    self:AdvRunToRoute(self.routePoints, self.tarFloatingHeight, self.floatingMove, true, false)
end

function EntityActorProxy:StartRunToRouteByData(arg1)
    self:RunToRouteByData(self.routeConfig, self.tarFloatingHeight, self.floatingMove)
end

function EntityActorProxy:StartFollowRunTo(arg1)
    if self.BeFollowState == BeFollowState.ING then
        self:AdvRunTo(self.targetPos, self.tarFloatingHeight, self.floatingMove)
    end
end

function EntityActorProxy:StartFollowRunToRoute(arg1)
    if self.BeFollowState == BeFollowState.ING then
        self:AdvRunToRoute(self.routePoints, self.tarFloatingHeight, self.floatingMove, true, false)
    end
end

function EntityActorProxy:StartFollowRunToRouteByData(arg1)
    if self.BeFollowState == BeFollowState.ING then
        self:RunToRouteByData(self.routeConfig, self.tarFloatingHeight, self.floatingMove)
    end
end

function EntityActorProxy:StartFollowWalkTo(arg1)
    if self.BeFollowState == BeFollowState.ING then
        self:AdvWalkTo(self.targetPos, self.tarFloatingHeight, self.floatingMove)
    end
end

function EntityActorProxy:StartFollowWalkToRoute(arg1)
    if self.BeFollowState == BeFollowState.ING then
        self:AdvWalkToRoute(self.routePoints, self.tarFloatingHeight, self.floatingMove, true, false)
    end
end

function EntityActorProxy:StartFollowWalkToRouteByData(arg1)
    if self.BeFollowState == BeFollowState.ING then
        self:WalkToRouteByData(self.routeConfig)
    end
end

function EntityActorProxy:CheckArrived(arg1, arg2)
    if self.targetPos == nil then
        arg1:FinishTask()
    end
end

EntityActorProxy.PauseLen = 10
EntityActorProxy.ResumeLen = 10
EntityActorProxy.BeFollowFailedLen = 20
EntityActorProxy.BeFollowState = BeFollowState.ING
EntityActorProxy.BeFollowFailed = nil
EntityActorProxy.OnTransFinishCallback = nil
EntityActorProxy.OnTransPreCallback = nil
EntityActorProxy.TransOffset = 1
EntityActorProxy.IsBeLocked = false
EntityActorProxy.BeLockTransLen = 30
EntityActorProxy.OnFinishCB = nil
EntityActorProxy.OnMovePauseCB = nil
EntityActorProxy.OnMoveResumeCB = nil
EntityActorProxy.OnMoveFailedCB = nil

function EntityActorProxy:FinishFollow(arg1)
    print("FinishFollow", self.OnFinishCB, self.PauseLen, self.ResumeLen, self.BeFollowState)
    self.BeFollowState = BeFollowState.SUCCESS
    if self.OnFinishCB ~= nil then
        self:OnFinishCB(arg1)
    end
end

function EntityActorProxy:CheckBeFollow(arg1, arg2)
    if self.targetPos == nil then
        arg1:FinishTask()
    end

    local distFromAvatarToSelf = self:GetDistFromAvatarToSelf()
    if 0 <= self.BeFollowFailedLen then
        if distFromAvatarToSelf > self.BeFollowFailedLen then
            print("Failed")
            self.BeFollowState = BeFollowState.FAILED
            arg1:FinishTask()
        end
    else
        if distFromAvatarToSelf > self.PauseLen then
            if self.BeFollowState ~= BeFollowState.WAITING then
                if self:HasFloatingComponent() then
                    if self:IsCanPauseFloatingMove() == true then
                        self.BeFollowState = BeFollowState.WAITING
                        self:PauseScriptedMove()
                    end
                else
                    print("Standby")
                    self.BeFollowState = BeFollowState.WAITING
                    self:Standby()
                end
            end
        else
            if distFromAvatarToSelf <= self.ResumeLen then
                if self.BeFollowState == BeFollowState.WAITING then
                    self.BeFollowState = BeFollowState.ING
                    if self:HasFloatingComponent() then
                        self:ResumeScriptedMove()
                    else
                        self:RunTo(self.targetPos)
                    end
                end
            end
        end
    end
end

function EntityActorProxy:DisappearFollow(arg1)
    self.BeFollowState = BeFollowState.FAILED
    arg1:FinishTask()
end

function EntityActorProxy:CheckBeFollowRoute(arg1, arg2)
    if self.targetPos == nil then
        arg1:FinishTask()
    end

    local distFromAvatarToSelf = self:GetDistFromAvatarToSelf()
    if 0 <= self.BeFollowFailedLen then
        if distFromAvatarToSelf > self.BeFollowFailedLen then
            print("Failed")
            self.BeFollowState = BeFollowState.FAILED
            if self.OnFinishCB ~= nil then
                self:OnFinishCB(arg1)
            end

            if self.OnMoveFailedCB ~= nil then
                self:OnMoveFailedCB()
            end
        end
    else
        if distFromAvatarToSelf > self.PauseLen then
            if self.BeFollowState ~= BeFollowState.WAITING then
                print("Standby")
                if self:HasFloatingComponent() then
                    if self.OnMovePauseCB == nil then
                        if self:IsCanPauseFloatingMove() == true then
                            self.BeFollowState = BeFollowState.WAITING
                            self:PauseScriptedMove()
                        end
                    else
                        self.BeFollowState = BeFollowState.WAITING
                        self:OnMovePauseCB()
                    end
                else
                    self.BeFollowState = BeFollowState.WAITING
                    if self.OnMovePauseCB == nil then
                        self:Standby()
                    else
                        self:OnMovePauseCB()
                    end
                end
            end
        else
            if distFromAvatarToSelf <= self.ResumeLen then
                if self.BeFollowState == BeFollowState.WAITING then
                    if self.ForcePauseFollowRoute ~= true then
                        print("Resume")
                        self.BeFollowState = BeFollowState.ING
                        if self:HasFloatingComponent() then
                            if self.OnMoveResumeCB == nil then
                                self:ResumeScriptedMove()
                            else
                                self:OnMoveResumeCB()
                            end
                        else
                            if self.OnMoveResumeCB == nil then
                                self:ResumeMove()
                            else
                                self:OnMoveResumeCB()
                            end
                        end
                    end
                end
            end
        end
    end
end

function EntityActorProxy:DisappearFollowRoute(arg1)
    self.BeFollowState = BeFollowState.FAILED
    if self.OnFinishCB ~= nil then
        self:OnFinishCB(arg1)
    end

    if self.OnMoveFailedCB ~= nil then
        self:OnMoveFailedCB()
    end
end

function EntityActorProxy:CheckBeLock(arg1, arg2)
    local pos = self.GetPos(self)
    local avatarPos = actorUtils.GetAvatarPos()
    local dist = M.Dist(pos, avatarPos)
    if 0 <= self.BeLockTransLen then
        if dist > self.BeLockTransLen then
            if self.IsBeLocked == false then
                self.IsBeLocked = true
                self.Standby(self)
                local dir2Euler = M.Dir2Euler(pos - avatarPos)
                local transOffset
                if type(self.TransOffset) == "number" then
                    transOffset = pos - self.TransOffset * self.GetForward(self)
                else
                    transOffset = self.TransOffset
                end

                self.SyncPos(self, 0)
                if self.TransmitPlayer(self, 0, transOffset, dir2Euler, function(arg1)
                    self:OnTransFinishCallback()
                end, function(arg1)
                    self:OnTransPreCallback()
                end) == false then
                    self.IsBeLocked = false
                end
            end
        end
    else
        if dist <= self.BeLockTransLen then
            if self.IsBeLocked == true then
                self.IsBeLocked = false
            end
        end
    end
end

function EntityActorProxy:WalkToTask(arg1, arg2, arg3, arg4, arg5, arg6)
    self:WalkToTaskInternal(arg1, 0, false, arg2, arg3, arg4, arg5, arg6)
end

function EntityActorProxy:AdvWalkToTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    self:WalkToTaskInternal(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
end

function EntityActorProxy:WalkToTaskInternal(targetPos, tarFloatingHeight, floatingMove, arg4, arg5, arg6, arg7, arg8)
    self:ClearFollowTask()
    self.targetPos = targetPos
    self.tarFloatingHeight = tarFloatingHeight
    self.floatingMove = floatingMove
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    task:StartEvent("+", self.StartWalkTo)
    task:TickEvent("+", self.CheckArrived)
    if arg4 ~= nil then
        task:FinishEvent("+", arg4)
    end

    if arg5 ~= nil then
        task:PauseEvent("+", arg5)
    end

    if arg6 ~= nil then
        task:ResumeEvent("+", arg6)
    end

    if arg7 ~= nil then
        task:DisappearEvent("+", arg7)
    end

    if arg8 ~= nil then
        task:DestroyEvent("+", arg8)
    end
end

function EntityActorProxy:WalkToRouteTask(arg1, arg2, arg3, arg4, arg5, arg6)
    self:WalkToRouteTaskInternal(arg1, 0, false, arg2, arg3, arg4, arg5, arg6)
end

function EntityActorProxy:AdvWalkToRouteTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    self:WalkToRouteTaskInternal(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
end

function EntityActorProxy:WalkToRouteTaskInternal(routePoints, tarFloatingHeight, floatingMove, arg4, arg5, arg6, arg7, arg8)
    print("Walk to route task")
    self:ClearFollowTask()
    self.targetPos = routePoints[#routePoints]
    self.tarFloatingHeight = tarFloatingHeight
    self.floatingMove = floatingMove
    self.routePoints = routePoints
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    task:StartEvent("+", self.StartWalkToRoute)
    task:TickEvent("+", self.CheckArrived)
    if arg4 ~= nil then
        task:FinishEvent("+", arg4)
    end

    if arg5 ~= nil then
        task:PauseEvent("+", arg5)
    end

    if arg6 ~= nil then
        task:ResumeEvent("+", arg6)
    end

    if arg7 ~= nil then
        task:DisappearEvent("+", arg7)
    end

    if arg8 ~= nil then
        task:DestroyEvent("+", arg8)
    end
end

function EntityActorProxy:WalkToRouteByDataTask(routeConfig, tarFloatingHeight, floatingMove, arg4, arg5, arg6)
    print("Walk to route by data task")
    self:ClearFollowTask()
    self.targetPos = routeConfig.points[#routeConfig.points]
    if tarFloatingHeight == nil then
        tarFloatingHeight = 0
    end

    if floatingMove == nil then
        floatingMove = false
    end

    self.tarFloatingHeight = tarFloatingHeight
    self.floatingMove = floatingMove
    self.routeConfig = routeConfig
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    task:StartEvent("+", self.StartWalkToRouteByData)
    task:TickEvent("+", self.CheckArrived)
    if arg4 ~= nil then
        task:FinishEvent("+", arg4)
    end

    if arg5 ~= nil then
        task:PauseEvent("+", arg5)
    end

    if arg6 ~= nil then
        task:ResumeEvent("+", arg6)
    end
end

function EntityActorProxy:RunToTask(arg1, arg2, arg3, arg4, arg5, arg6)
    self:RunToTaskInternal(arg1, 0, false, arg2, arg3, arg4, arg5, arg6)
end

function EntityActorProxy:AdvRunToTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    self:RunToTaskInternal(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
end

function EntityActorProxy:RunToTaskInternal(targetPos, tarFloatingHeight, floatingMove, arg4, arg5, arg6, arg7, arg8)
    self:ClearFollowTask()
    self.targetPos = targetPos
    self.tarFloatingHeight = tarFloatingHeight
    self.floatingMove = floatingMove
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    task:StartEvent("+", self.StartRunTo)
    task:TickEvent("+", self.CheckArrived)
    if arg4 ~= nil then
        task:FinishEvent("+", arg4)
    end

    if arg5 ~= nil then
        task:PauseEvent("+", arg5)
    end

    if arg6 ~= nil then
        task:ResumeEvent("+", arg6)
    end

    if arg7 ~= nil then
        task:DisappearEvent("+", arg7)
    end

    if arg8 ~= nil then
        task:DestroyEvent("+", arg8)
    end
end

function EntityActorProxy:RunToRouteTask(arg1, arg2, arg3, arg4, arg5, arg6)
    self:RunToRouteTaskInternal(arg1, 0, false, arg2, arg3, arg4, arg5, arg6)
end

function EntityActorProxy:AdvRunToRouteTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = false
    end

    self:RunToRouteTaskInternal(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
end

function EntityActorProxy:RunToRouteTaskInternal(routePoints, tarFloatingHeight, floatingMove, arg4, arg5, arg6, arg7, arg8)
    print("Run to route task")
    self:ClearFollowTask()
    self.targetPos = routePoints[#routePoints]
    self.tarFloatingHeight = tarFloatingHeight
    self.floatingMove = floatingMove
    self.routePoints = routePoints
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    task:StartEvent("+", self.StartRunToRoute)
    task:TickEvent("+", self.CheckArrived)
    if arg4 ~= nil then
        task:FinishEvent("+", arg4)
    end

    if arg5 ~= nil then
        task:PauseEvent("+", arg5)
    end

    if arg6 ~= nil then
        task:ResumeEvent("+", arg6)
    end

    if arg7 ~= nil then
        task:DisappearEvent("+", arg7)
    end

    if arg8 ~= nil then
        task:DestroyEvent("+", arg8)
    end
end

function EntityActorProxy:RunToRouteByDataTask(routeConfig, tarFloatingHeight, floatingMove, arg4, arg5, arg6)
    print("Run to route by data task")
    self:ClearFollowTask()
    self.targetPos = routeConfig.points[#routeConfig.points]
    if tarFloatingHeight == nil then
        tarFloatingHeight = 0
    end

    if floatingMove == nil then
        floatingMove = false
    end

    self.tarFloatingHeight = tarFloatingHeight
    self.floatingMove = floatingMove
    self.routeConfig = routeConfig
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    task:StartEvent("+", self.StartRunToRouteByData)
    task:TickEvent("+", self.CheckArrived)
    if arg4 ~= nil then
        task:FinishEvent("+", arg4)
    end

    if arg5 ~= nil then
        task:PauseEvent("+", arg5)
    end

    if arg6 ~= nil then
        task:ResumeEvent("+", arg6)
    end
end

function EntityActorProxy:BeFollowTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    print("Be follow task")
    self:BeFollowTaskInternal(arg1, 0, false, arg2, arg3, arg4, arg5, arg6, arg7)
end

function EntityActorProxy:AdvBeFollowTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    self:BeFollowTaskInternal(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end

function EntityActorProxy:BeFollowTaskInternal(targetPos, tarFloatingHeight, floatingMove, pauseLen, beFollowFailedLen, onFinishCB, arg7, arg8, arg9)
    print("Be follow task")
    self:ClearFollowTask()
    self.targetPos = targetPos
    if tarFloatingHeight == nil then
        tarFloatingHeight = 0
    end

    if floatingMove == nil then
        floatingMove = false
    end

    self.tarFloatingHeight = tarFloatingHeight
    self.floatingMove = floatingMove
    self.PauseLen = pauseLen
    self.ResumeLen = pauseLen
    self.BeFollowFailedLen = beFollowFailedLen
    self.BeFollowState = BeFollowState.ING
    self.OnFinishCB = onFinishCB
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    local v = task
    local startEvent = task.StartEvent
    local str = "+"
    local startFollowWalkTo
    if arg9 == true then
        startFollowWalkTo = self.StartFollowWalkTo
        if startFollowWalkTo then
            goto lbl_37
        end
    end

    startFollowWalkTo = self.StartFollowRunTo
    ::lbl_37::
    startEvent(v, str, startFollowWalkTo)
    task:TickEvent("+", self.CheckBeFollow)
    task:FinishEvent("+", self.FinishFollow)
    task:DisappearEvent("+", self.DisappearFollow)
    if arg7 ~= nil then
        task:PauseEvent("+", arg7)
    end

    if arg8 ~= nil then
        task:ResumeEvent("+", arg8)
    end
end

function EntityActorProxy:BeFollowTaskByData(arg1, arg2, arg3, arg4)
    self:BeFollowTaskInternal(arg1.pos, arg1.targetFloatingHeight, arg1.useFloatingMove, arg1.beFollowLen, arg1.beFollowFailed, arg2, arg3, arg4, arg1.isWalk)
end

function EntityActorProxy:BeFollowTaskByRoutePoints(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    self:BeFollowTaskByRoutePointsWithDiffLen(arg1, arg2, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end

function EntityActorProxy:AdvBeFollowTaskByRoutePoints(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13)
    self:BeFollowTaskByRoutePointsWithDiffLenInternal(arg1, arg2, arg3, arg4, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13)
end

function EntityActorProxy:FollowTaskDefaultResume()
    if self.BeFollowState == BeFollowState.ING then
        self:ResumeMove()
    end
end

function EntityActorProxy:BeFollowTaskByRoutePointsWithDiffLen(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
    self:BeFollowTaskByRoutePointsWithDiffLenInternal(arg1, 0, false, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
end

function EntityActorProxy:AdvBeFollowTaskByRoutePointsWithDiffLen(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)
    self:BeFollowTaskByRoutePointsWithDiffLenInternal(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14)
end

function EntityActorProxy:BeFollowTaskByRoutePointsWithDiffLenInternal(routePoints, tarFloatingHeight, floatingMove, pauseLen, resumeLen, beFollowFailedLen, onFinishCB, arg8, arg9, onMovePauseCB, onMoveResumeCB, onMoveFailedCB, arg13, arg14)
    print("Be follow task")
    self:ClearFollowTask()
    self.targetPos = routePoints[#routePoints]
    if tarFloatingHeight == nil then
        tarFloatingHeight = 0
    end

    if floatingMove == nil then
        floatingMove = false
    end

    self.tarFloatingHeight = tarFloatingHeight
    self.floatingMove = floatingMove
    self.routePoints = routePoints
    self.PauseLen = pauseLen
    self.ResumeLen = resumeLen
    self.BeFollowFailedLen = beFollowFailedLen
    self.BeFollowState = BeFollowState.ING
    self.OnFinishCB = onFinishCB
    self.OnMovePauseCB = onMovePauseCB
    self.OnMoveResumeCB = onMoveResumeCB
    self.OnMoveFailedCB = onMoveFailedCB
    self.ForcePauseFollowRoute = nil
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    local v = task
    local startEvent = task.StartEvent
    local str = "+"
    local startFollowWalkToRoute
    if arg13 == true then
        startFollowWalkToRoute = self.StartFollowWalkToRoute
        if startFollowWalkToRoute then
            goto lbl_44
        end
    end

    startFollowWalkToRoute = self.StartFollowRunToRoute
    ::lbl_44::
    startEvent(v, str, startFollowWalkToRoute)
    task:TickEvent("+", self.CheckBeFollowRoute)
    task:FinishEvent("+", self.FinishFollow)
    task:DisappearEvent("+", self.DisappearFollowRoute)
    if arg8 ~= nil then
        task:PauseEvent("+", arg8)
    end

    if arg9 ~= nil then
        task:ResumeEvent("+", arg9)
    else
        task:ResumeEvent("+", self.FollowTaskDefaultResume)
    end

    if arg14 ~= nil then
        task:DestroyEvent("+", arg14)
    end
end

function EntityActorProxy:BeFollowTaskByRouteConfig(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    self:BeFollowTaskByRouteConfigWithDiffLenInternal(arg1, 0, false, arg2, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end

function EntityActorProxy:BeFollowTaskByRouteConfigWithDiffLen(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
    self:BeFollowTaskByRouteConfigWithDiffLenInternal(arg1, arg2, arg3, beFollowLen, beFollowLen, arg6, arg7, arg8, arg9, arg10, arg11, arg12)
end

function EntityActorProxy:BeFollowTaskByRouteConfigWithDiffLenInternal(arg1, tarFloatingHeight, floatingMove, pauseLen, resumeLen, beFollowFailedLen, onFinishCB, arg8, arg9, onMovePauseCB, onMoveResumeCB, onMoveFailedCB)
    print("Be follow task")
    self:ClearFollowTask()
    self.targetPos = arg1.points[#arg1.points]
    if tarFloatingHeight == nil then
        tarFloatingHeight = 0
    end

    if floatingMove == nil then
        floatingMove = false
    end

    self.tarFloatingHeight = tarFloatingHeight
    self.floatingMove = floatingMove
    self.routeConfig = points
    self.PauseLen = pauseLen
    self.ResumeLen = resumeLen
    self.BeFollowFailedLen = beFollowFailedLen
    self.BeFollowState = BeFollowState.ING
    self.OnFinishCB = onFinishCB
    self.OnMovePauseCB = onMovePauseCB
    self.OnMoveResumeCB = onMoveResumeCB
    self.OnMoveFailedCB = onMoveFailedCB
    self.ForcePauseFollowRoute = nil
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.MOVE, "Move")
    task:StartEvent("+", self.StartFollowRunToRouteByData)
    task:TickEvent("+", self.CheckBeFollowRoute)
    task:FinishEvent("+", self.FinishFollow)
    task:DisappearEvent("+", self.DisappearFollowRoute)
    if arg8 ~= nil then
        task:PauseEvent("+", arg8)
    end

    if arg9 ~= nil then
        task:ResumeEvent("+", arg9)
    end
end

function EntityActorProxy:ClearBeLockTask()
    self:ClearTask(TaskID.LOCK_TASK_ID)
end

function EntityActorProxy:BeLockTask(beLockTransLen, transOffset, onTransFinishCallback, onTransPreCallback)
    print("Be lock task ")
    self:ClearBeLockTask()
    self.IsBeLocked = false
    self.BeLockTransLen = beLockTransLen
    self.TransOffset = transOffset
    self.OnTransFinishCallback = onTransFinishCallback
    self.OnTransPreCallback = onTransPreCallback
    self:CreateTask(TaskID.LOCK_TASK_ID, LuaTaskType.NORMAL, "Lock"):TickEvent("+", self.CheckBeLock)
end

function EntityActorProxy:BeLockTaskByData(arg1, arg2)
    self:BeLockTask(arg1.beLockTransLen, arg1.transOffset, arg2)
end

function EntityActorProxy:BurrowMove(arg1, arg2, arg3)
    self.uActor:BurrowMove(arg1, arg2, arg3)
end

EntityActorProxy.freeStyleType = -1
EntityActorProxy.freeStyleForceInterrupt = false

function EntityActorProxy:StartFreeStyle(arg1)
    self:DoFreeStyle(self.freeStyleType, self.freeStyleForceInterrupt)
end

function EntityActorProxy:ResumeFreeStyle(arg1)
    arg1:FinishTask()
end

function EntityActorProxy:DoFreeStyleTask(freeStyleType, arg2, arg3)
    if not arg2 then
        if self:DoingFreeStyle() then
            return
        end
    end

    self:ClearFollowTask()
    self.freeStyleType = freeStyleType
    self.freeStyleForceInterrupt = true
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.FREE_STYLE, "Idle")
    task:SetFreeStyleType(freeStyleType)
    task:StartEvent("+", self.StartFreeStyle)
    task:ResumeEvent("+", self.ResumeFreeStyle)
    if arg3 ~= nil then
        task:FinishEvent("+", arg3)
    end
end

function EntityActorProxy:SwitchAirMode(arg1)
    self.uActor:SwitchAirMode(arg1)
end

function EntityActorProxy:ClearActor()
    self.uActor:ClearActor()
    self.targetPos = nil
    self.jumpFreeStyleType = 0
    self.tarFloatingHeight = 0
    self.floatingMove = false
    self.routePoints = nil
    self.routeConfig = nil
    self.ResumeLen = 10
    self.PauseLen = 10
    self.BeFollowFailedLen = 20
    self.BeFollowState = BeFollowState.ING
    self.BeFollowFailed = nil
    self.IsBeLocked = false
end

function EntityActorProxy:SpawnAttach(arg1)
    self.uActor:SpawnAttach(arg1)
end

function EntityActorProxy:UnSpawnAttach(arg1)
    self.uActor:UnspawnAttach(arg1)
end

function EntityActorProxy:SpawnAttachEx(arg1)
    self.uActor:SpawnAttach(arg1)
end

function EntityActorProxy:UnSpawnAttachEx(arg1)
    self.uActor:UnspawnAttach(arg1)
end

function EntityActorProxy:SetAttachVisible(arg1, arg2)
    self.uActor:SetAttachVisible(arg1, arg2)
end

function EntityActorProxy:SetAttachAnimatorInteger(arg1, arg2, arg3)
    self.uActor:SetAttachAnimatorInteger(arg1, arg2, arg3)
end

function EntityActorProxy:SetAttachAnimatorTrigger(arg1, arg2)
    self.uActor:SetAttachAnimatorTrigger(arg1, arg2)
end

function EntityActorProxy:SpawnAttachEffect(arg1)
    self.uActor:SpawnAttach(arg1)
end

function EntityActorProxy:UnSpawnAttachEffect(arg1)
    self.uActor:UnspawnAttach(arg1)
end

function EntityActorProxy:PerformDither(arg1, arg2, arg3, arg4)
    if true ~= arg4 then
        arg4 = false
    end

    self.uActor:PerformDither(arg1, arg2, arg3, arg4)
end

function EntityActorProxy:SetVisible(visible)
    self.uActor:SetVisible(visible)
end

function EntityActorProxy:DestroyWithDither(arg1, arg2)
    self:OnDestroy()
    self.uActor:DestroyWithDither(arg1, arg2)
end

function EntityActorProxy:Disappear(arg1)
    self.uActor:Disappear(arg1)
end

function EntityActorProxy:DestroyWithDisappear(arg1, arg2)
    self.uActor:DestroyWithDisappear(arg1, arg2)
end

function EntityActorProxy:DestroyWithDitherEx(arg1)
    self:DestroyWithDither(false, arg1)
end

function EntityActorProxy:SetActive(active)
    self.uActor:SetActive(active)
end

function EntityActorProxy:ClearThreatTask()
    self:ClearTask(TaskID.THREAD_TASK_ID)
end

function EntityActorProxy:ThreatTaskInBackGround(arg1, arg2, arg3, arg4)
    self:ThreatTask(arg1, arg2, arg3, arg4, "isBackGround")
end

function EntityActorProxy:ThreatTask(arg1, arg2, arg3, arg4, arg5)
    self:ClearThreatTask()
    local task = self:CreateTask(TaskID.THREAD_TASK_ID, LuaTaskType.THREAT, arg5)
    if arg1 ~= nil then
        task:ThreatAlert("+", arg1)
    end

    if arg2 ~= nil then
        task:ThreatAware("+", arg2)
    end

    if arg3 ~= nil then
        task:ThreatUnaware("+", arg3)
    end

    if arg4 ~= nil then
        task:ThreatInfo("+", arg4)
    end
end

function EntityActorProxy:SteerToTask(arg1, arg2, arg3, arg4)
    local task = self:CreateTask(TaskID.MOVE_TASK_ID, LuaTaskType.STEER)
    task:StartSteer(arg1, arg2, arg3, arg4)
    task:FinishEvent("+", self.DoFreeStateTrigger)
end

function EntityActorProxy:SteerToAutonomyTask(arg1, arg2, arg3, arg4)
    local task = self:CreateTask(TaskID.STEER_TO_AUTONOMY_ID, LuaTaskType.STEER)
    task:StartSteer(arg1, arg2, arg3, arg4)
    task:FinishEvent("+", self.DoFreeStateTrigger)
end

function EntityActorProxy:ClearSteerToAutonomyTask()
    self:ClearTask(TaskID.STEER_TO_AUTONOMY_ID)
end

function EntityActorProxy:ClearNpcFollowTask()
    actorUtils.ClearNpcFollowTask(self.alias)
    self:ClearTask(TaskID.NPC_FOLLOW_PLAYER_ID)
end

function EntityActorProxy:NpcFollowTaskWithParams(id, arg2, arg3, arg4, arg5, isWalkOnly, tickInternal, walkToPathLength, waitPathLength, warningLength, accessFailLength, maxFailLength, failMaxCount, playerIdleTime, followStrategy, normalSpeedRatio, autoSpeedUpRatio, autoSpeedDownRatio, autoSpeedUpDist, autoSpeedDownDist, arg21, arg22, npcSafePolygon, npcSafeResumeDist)
    if followStrategy == nil then
        followStrategy = 0
    end

    if arg5 == nil or arg5 == "" then
        arg5 = "Move"
    end

    return self:NpcFollowTask(id, arg5, {
        ID = id,
        tickInternal = tickInternal,
        followStrategy = followStrategy,
        isWalkOnly = isWalkOnly,
        walkToPathLength = walkToPathLength,
        waitPathLength = waitPathLength,
        warningLength = warningLength,
        accessFailLength = accessFailLength,
        maxFailLength = maxFailLength,
        failMaxCount = failMaxCount,
        playerIdleTime = playerIdleTime,
        useFloatingMove = true,
        floatingHeight = 1,
        forceCloseTo = false,
        forceCloseToDist = 0,
        normalSpeedRatio = normalSpeedRatio,
        autoSpeedUpRatio = autoSpeedUpRatio,
        autoSpeedDownRatio = autoSpeedDownRatio,
        autoSpeedUpDist = autoSpeedUpDist,
        autoSpeedDownDist = autoSpeedDownDist,
        npcSafePolygon = npcSafePolygon,
        npcSafeResumeDist = npcSafeResumeDist
    }, arg2, arg3, arg4, arg21, arg22)
end

function EntityActorProxy:AdvNpcFollowTaskWithParams(id, arg2, arg3, arg4, arg5, isWalkOnly, tickInternal, walkToPathLength, waitPathLength, warningLength, accessFailLength, maxFailLength, failMaxCount, playerIdleTime, forceCloseTo, forceCloseToDist, useFloatingMove, floatingHeight, followStrategy, normalSpeedRatio, autoSpeedUpRatio, autoSpeedDownRatio, autoSpeedUpDist, autoSpeedDownDist, arg25, arg26, npcSafePolygon, npcSafeResumeDist)
    if followStrategy == nil then
        followStrategy = 0
    end

    if useFloatingMove == nil then
        useFloatingMove = true
    end

    if floatingHeight == nil then
        floatingHeight = 1
    end

    if forceCloseTo == nil then
        forceCloseTo = false
    end

    if normalSpeedRatio == nil then
        normalSpeedRatio = -1
    end

    if arg5 == nil or arg5 == "" then
        arg5 = "Move"
    end

    return self:NpcFollowTask(id, arg5, {
        ID = id,
        tickInternal = tickInternal,
        followStrategy = followStrategy,
        isWalkOnly = isWalkOnly,
        walkToPathLength = walkToPathLength,
        waitPathLength = waitPathLength,
        warningLength = warningLength,
        accessFailLength = accessFailLength,
        maxFailLength = maxFailLength,
        failMaxCount = failMaxCount,
        playerIdleTime = playerIdleTime,
        useFloatingMove = useFloatingMove,
        floatingHeight = floatingHeight,
        forceCloseTo = forceCloseTo,
        forceCloseToDist = forceCloseToDist,
        normalSpeedRatio = normalSpeedRatio,
        autoSpeedUpRatio = autoSpeedUpRatio,
        autoSpeedDownRatio = autoSpeedDownRatio,
        autoSpeedUpDist = autoSpeedUpDist,
        autoSpeedDownDist = autoSpeedDownDist,
        npcSafePolygon = npcSafePolygon,
        npcSafeResumeDist = npcSafeResumeDist
    }, arg2, arg3, arg4, arg25, arg26)
end

function EntityActorProxy:NpcFollowTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    self:ClearNpcFollowTask()
    if arg2 == nil or arg2 == "" then
        arg2 = "Move"
    end

    actorUtils.NpcFollowTask(self.alias, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if self:IsActorStart() then
        local task = self:CreateTask(TaskID.NPC_FOLLOW_PLAYER_ID, LuaTaskType.NPC_FOLLOW_PLAYER, arg2)
        task:InitSetting(arg3)
        task:StartNpcFollowAvatar(arg4, arg5, arg6, arg7, arg8)
        return task
    end

    return 0
end

function EntityActorProxy:ClearNpcRunAwayTask()
    actorUtils.ClearNpcRunAwayTask(self.alias)
    self:ClearTask(TaskID.NPC_RUN_AWAY_ID)
end

function EntityActorProxy:NpcRunAwayTask(arg1, arg2, arg3, arg4, arg5, arg6)
    self:ClearNpcRunAwayTask()
    if arg3 == nil then
        arg3 = 0
    end

    if arg4 == nil then
        arg4 = 0.5
    end

    actorUtils.NpcRunAwayTask(self.alias, "Move", arg1, arg2, arg3, arg4, arg5)
    if self:IsActorStart() then
        local task = self:CreateTask(TaskID.NPC_RUN_AWAY_ID, LuaTaskType.NPC_RUN_AWAY, "Move")
        task:SetParams(arg1, arg2, arg3, arg4)
        task:StartNpcRunAwayTask(arg5)
    end
end

function EntityActorProxy:ClearCheckPlayerDistTask()
    actorUtils.ClearCheckPlayerDistTask(self.alias)
    self:ClearTask(TaskID.DIST_TO_PLAYER_ID)
end

function EntityActorProxy:CheckPlayerDistTask(arg1, arg2, arg3, arg4)
    self:ClearCheckPlayerDistTask()
    if arg2 == nil then
        arg2 = 0.5
    end

    actorUtils.CheckPlayerDistTask(self.alias, "Move", arg1, arg2, arg3, arg4)
    if self:IsActorStart() then
        local task = self:CreateTask(TaskID.DIST_TO_PLAYER_ID, LuaTaskType.DIST_TO_PLAYER, "Move")
        task:SetParams(arg1, arg2)
        task:StartCheck(arg3, arg4)
    end
end

function EntityActorProxy:SetLocalEntityDist(localEntityDist)
    self.uActor:SetLocalEntityDist(localEntityDist)
end

function EntityActorProxy:OnScriptEventTrigger(arg1)
    self.uActor:OnScriptEventTrigger(arg1)
end

function EntityActorProxy:ForceAvatarWalkByDist(arg1, arg2, arg3)
    self:ClearTask(TaskID.FORCE_WALK_ID)
    local task = self:CreateTask(TaskID.FORCE_WALK_ID, LuaTaskType.FORCE_WALK)
    task:InitParams(arg1, arg2)
    if arg3 ~= nil then
        task:DestroyEvent("+", arg3)
    end
end

function EntityActorProxy:ResetForceAvatarWalk()
    self:ClearTask(TaskID.FORCE_WALK_ID)
end

function EntityActorProxy:PlayEmoSyncFromLua(arg1, arg2)
    if arg2 == nil then
        arg2 = false
    end

    self.uActor:PlayEmoSyncFromLua(arg1, arg2)
end

function EntityActorProxy:PlayEmoSync(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    if arg6 == nil then
        arg6 = false
    end

    self.uActor:PlayEmoSync(arg1, arg2, arg3, arg4, arg5, arg6, arg8, arg9, arg10)
end

function EntityActorProxy:ForceFinishEmoSync(arg1, arg2)
    self.uActor:ForceFinishEmoSync(arg1)
end

function EntityActorProxy:CancelDefaultEmo()
    self.uActor:CancelDefaultEmo()
end

function EntityActorProxy:PlayEmojiBubble(arg1)
    self.uActor:PlayEmojiBubble(arg1)
end

function EntityActorProxy:StopCurEmojiBubble()
    self.uActor:StopCurEmojiBubble()
end

function EntityActorProxy:SetDynAdapterToGround(arg1, arg2)
    if arg1 == true and arg2 == nil then
        arg2 = 75
    end

    self.uActor:SetDynAdapterToGround(arg1, arg2)
end

function EntityActorProxy:SetHeightCorrectionEnabled(arg1, arg2)
    self.uActor:SetHeightCorrectionEnabled(arg1, arg2)
end

function EntityActorProxy:SetTransformEnable(arg1, arg2)
    self.uActor:SetTransformEnable(arg1, arg2)
end

function EntityActorProxy:SetDynamicBone(arg1, arg2)
    if nil == arg2 then
        arg2 = true
    end

    self.uActor:SetDynamicBone(arg1, arg2)
end

return EntityActorProxy
