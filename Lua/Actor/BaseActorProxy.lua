require("Base/Class")
require("Actor/ActorCommon")

local BaseActorProxy = class("BaseActorProxy", nil)
BaseActorProxy.alias = ""
BaseActorProxy.metaPath = ""
BaseActorProxy.uActor = nil
BaseActorProxy.defaultAlias = ""
BaseActorProxy.bornSceneID = 3
BaseActorProxy.coroutineDic = nil
BaseActorProxy.coroutineKeyDic = nil
BaseActorProxy.dataIndex = -1
BaseActorProxy.isAutoStart = true
BaseActorProxy.actorData = nil
BaseActorProxy.actorType = ActorType.INVALID
BaseActorProxy.dontDestroyOnClear = false
BaseActorProxy.isLocal = false
function BaseActorProxy:OnPreInit() end

function BaseActorProxy:OnPostInit()
    if self.uActor ~= nil then
        self.uActor:TryStartActor()
    end

    self:OnPostDataPrepare()
end

function BaseActorProxy:OnPostDataPrepare() end

function BaseActorProxy:OnInit(alias)
    self.alias = alias
end

function BaseActorProxy:Register() end
function BaseActorProxy:Start() end
function BaseActorProxy:OnDestroy() end

function BaseActorProxy:Destroy(arg1)
    self:OnDestroy()
    self:ClearCoroutine()
    BaseActorProxy.DestroyActor(self.uActor, arg1)
    self.uActor = nil
    self.actorData = nil
end

function BaseActorProxy:ClearInfo()
    if self.uActor ~= nil then
        self.uActor:ClearInfo()
    end
end

function BaseActorProxy:ClearCoroutine()
    if self.coroutineDic ~= nil then
        for k, coroutine in pairs(self.coroutineDic) do
            self:UnCallFunc(k)
        end
    end

    if self.coroutineKeyDic ~= nil then
        for k, coroutineKey in pairs(self.coroutineKeyDic) do
            self:UnCallDelayWithKey(k)
        end
    end
end

function BaseActorProxy:DestroyActor(arg1)
    if self ~= nil then
        self:Destroy(arg1)
    end
end

function BaseActorProxy:IsValid()
    if self.uActor == nil then
        return false
    end

    return self.uActor:IsValid()
end

function BaseActorProxy:GetQuestToken()
    return 0
end

function BaseActorProxy:RegisterActorEvent(arg1)
    self.uActor:OnActorEvent("-", arg1)
    self.uActor:OnActorEvent("+", arg1)
end

function BaseActorProxy:UnregisterActorEvent(arg1)
    self.uActor:OnActorEvent("-", arg1)
end

function BaseActorProxy:NotifyTo(arg1, arg2, arg3, ...)
    if arg3 == nil then
        arg3 = false
    end

    actorUtils.FireEvent(ActorEvtTargetType.SINGLE, arg1, arg2, (...), arg3)
end

function BaseActorProxy:NotifyToWithSource(arg1, arg2, arg3, arg4, arg5, ...)
    if arg3 == nil then
        arg3 = false
    end

    actorUtils.FireEventWithSource(ActorEvtTargetType.SINGLE, arg1, arg2, (...), arg3, arg4, arg5)
end

function BaseActorProxy:LightNotifyToWithSource(arg1, arg2, arg3, arg4, arg5, ...)
    if arg3 == nil then
        arg3 = false
    end

    actorUtils.FireLightEventWithSource(ActorEvtTargetType.SINGLE, arg1, arg2, (...), arg3, arg4, arg5)
end

function BaseActorProxy:CreateTask(arg1, arg2, arg3)
    local task = luaTaskUtils.CreateTask(arg1, arg2, self.uActor, arg3)
    return task
end

function BaseActorProxy:ClearTask(arg1)
    self:ClearRunningTask(arg1)
    self:ClearTaskQueue(arg1)
end

function BaseActorProxy:ClearTaskQueue(arg1)
    self.uActor:ClearTaskQueue(arg1)
end

function BaseActorProxy:ClearRunningTask(arg1)
    self.uActor:ClearRunningTask(arg1)
end

function BaseActorProxy:ClearAllTask()
    self.uActor:ClearAllTask()
end

function BaseActorProxy:GetRuningTask(arg1)
    return self.uActor:GetRuningTask(arg1)
end

function BaseActorProxy:ClearFollowTask()
    self:ClearTask(self.MOVE_TASK_ID)
end

function BaseActorProxy:RegisterTaskTagCB(arg1, arg2, arg3)
    self.uActor:RegisterTaskTagCB(arg1, arg2, arg3)
end

function BaseActorProxy:UnregisterTaskTagCB(arg1, arg2, arg3)
    self.uActor:UnregisterTaskTagCB(arg1, arg2, arg3)
end

function BaseActorProxy:PauseByTag(arg1)
    self.uActor:PauseByTag(arg1)
end

function BaseActorProxy:ResumeByTag(arg1)
    self.uActor:ResumeByTag(arg1)
end

function BaseActorProxy:DelayResumeByTag(arg1)
    self.uActor:DelayResumeByTag(arg1)
end

function BaseActorProxy:HasTaskResumed(arg1)
    return self.uActor:HasTaskResumed(arg1)
end

function BaseActorProxy:HasTagTask(arg1)
    return self.uActor:HasTagTask(arg1)
end

function BaseActorProxy:ClearActor()
    self.uActor:ClearActor()
end

function BaseActorProxy:DelayInTask(arg1, arg2, arg3)
    local callDelay = self:CallDelay(arg1, arg2)
    if arg3 ~= nil and callDelay ~= nil then
        arg3:SyncCo(callDelay)
    end
end

function BaseActorProxy:CallDelay(arg1, arg2, ...)
    return self:CallDelayInternal(nil, false, arg1, arg2, ...)
end

function BaseActorProxy:CallDelayWithKey(arg1, arg2, arg3, ...)
    if nil == arg1 then
        CS.MoleMole.SuperDebug.LogError("CallDelayWithKey:" .. " key is nil ")
        return
    else
        if nil ~= self.coroutineKeyDic then
            if nil ~= self.coroutineKeyDic[arg1] then
                CS.MoleMole.SuperDebug.LogError("Duplicated CallDelayWithKey" .. tostring(arg1))
                return
            end
        end
    end

    return self:CallDelayInternal(arg1, true, arg2, arg3, ...)
end

function BaseActorProxy:SafeCallDelay(arg1, arg2, ...)
    return self:CallDelayInternal(nil, true, arg1, arg2, ...)
end

function BaseActorProxy:CallDelayInternal(arg1, arg2, arg3, arg4, ...)
    local coroutineCall = -1
    if self.uActor == nil then
        if NG_HSOD_DEBUG then
            print("call delay uActor nil " .. self.alias)
        end

        return coroutineCall
    end

    if self == nil then
        if (...) == nil then
            coroutineCall = self.uActor:CoroutineCall(arg3, arg4, arg2)
        end
    else
        local n = select("#", ...)
        if n == 0 then
            coroutineCall = self.uActor:CoroutineCall1Param(arg3, arg4, self, nil, arg2)
        elseif n == 1 then
            local v = table.unpack({...})
            coroutineCall = self.uActor:CoroutineCall1Param(arg3, arg4, self, v, arg2)
        elseif n == 2 then
            local v, v2 = table.unpack({...})
            coroutineCall = self.uActor:CoroutineCall2Param(arg3, arg4, self, v, v2, arg2)
        elseif n == 3 then
            local v, v2, v3 = table.unpack({...})
            coroutineCall = self.uActor:CoroutineCall3Param(arg3, arg4, self, v, v2, v3, arg2)
        end
    end

    if coroutineCall ~= -1 then
        if nil == self.coroutineDic then
            self.coroutineDic = {}
        end

        self.coroutineDic[arg4] = coroutineCall
        if arg1 ~= nil then
            if nil == self.coroutineKeyDic then
                self.coroutineKeyDic = {}
            end

            self.coroutineKeyDic[arg1] = coroutineCall
        end
    end

    return coroutineCall
end

function BaseActorProxy:InvokeRemoveCoroutine(arg1)
    if nil ~= self.coroutineKeyDic then
        for k, coroutineKey in pairs(self.coroutineKeyDic) do
            if coroutineKey == arg1 then
                self.coroutineKeyDic[k] = nil
                break
            end
        end
    end
end

function BaseActorProxy:UnCallFunc(arg1)
    if nil == self.coroutineDic then
        return
    end

    local coroutine = self.coroutineDic[arg1]
    if coroutine ~= nil and coroutine ~= -1 then
        self.uActor:StopCoroutine(coroutine)
        self.coroutineDic[arg1] = nil
    end
end

function BaseActorProxy:UnCallDelayWithKey(arg1)
    if nil == self.coroutineKeyDic then
        return
    end

    if nil == arg1 then
        return
    end

    local coroutineKey = self.coroutineKeyDic[arg1]
    if coroutineKey ~= nil and coroutineKey ~= -1 then
        self.uActor:StopCoroutine(coroutineKey)
        self.coroutineKeyDic[arg1] = nil
    end
end

function BaseActorProxy:Stop()
    self:ClearAllTask()
    self.uActor:StopAllCoroutine()
end

function BaseActorProxy:IsActorStart()
    return self.uActor:IsActorStart()
end

function BaseActorProxy:SpawnMonster(arg1, arg2, arg3, y, arg5, arg6, arg7, arg8, arg9, arg10)
    if arg8 == nil then
        arg8 = sceneData.DefaultSceneID
    elseif arg8 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg8 = sceneData.currSceneID
        end
    end

    if y == nil then
        y = {x = 0.0, y = 0.0, z = 0.0}
    else
        if type(y) == "number" then
            y = {x = 0.0, y = y, z = 0.0}
        end
    end

    if arg6 == nil then
        arg6 = 1.0
    end

    if arg9 == nil then
        arg9 = 0
    end

    if arg7 == nil then
        arg7 = ""
    end

    if not arg10 then
        arg10 = 0
    end

    self.uActor:SpawnMonster(arg1, arg2, arg3, y, arg6, arg8, arg7, arg9, arg10)
end

function BaseActorProxy:SpawnLocalMonster(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, currSceneID)
    if currSceneID == nil then
        currSceneID = sceneData.DefaultSceneID
    elseif currSceneID == 0 then
        if sceneData.currSceneID ~= -1 then
            currSceneID = sceneData.currSceneID
        end
    end

    if currSceneID ~= sceneData.currSceneID then
        return
    end

    if arg5 == nil then
        arg5 = 0
    end

    if arg7 == nil then
        arg7 = 1.0
    end

    if arg6 == nil then
        arg6 = 0
    end

    if arg8 == nil then
        arg8 = false
    end

    self.uActor:SpawnLocalMonster(arg2, arg3, arg4, arg5, arg6, arg7, arg1, arg8, arg9)
end

function BaseActorProxy:SpawnItem(arg1, arg2, y, arg4, arg5, arg6, arg7, arg8)
    if arg5 == nil then
        arg5 = sceneData.DefaultSceneID
    elseif arg5 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg5 = sceneData.currSceneID
        end
    end

    if y == nil then
        y = {x = 0.0, y = 0.0, z = 0.0}
    else
        if type(y) == "number" then
            y = {x = 0.0, y = y, z = 0.0}
        end
    end

    if arg4 == nil then
        arg4 = ""
    end

    if arg6 == nil then
        arg6 = 1
    end

    if not arg7 then
        arg7 = 0
    end

    if not arg8 then
        arg8 = 0
    end

    self.uActor:SpawnItem(arg1, arg2, y, arg5, arg4, arg6, arg7, arg8)
end

function BaseActorProxy:SpawnLocalItem(arg1, arg2, arg3, arg4, currSceneID)
    if currSceneID == nil then
        currSceneID = sceneData.DefaultSceneID
    elseif currSceneID == 0 then
        if sceneData.currSceneID ~= -1 then
            currSceneID = sceneData.currSceneID
        end
    end

    if currSceneID ~= sceneData.currSceneID then
        return
    end

    if arg4 == nil then
        arg4 = 0
    end

    if arg1 == nil then
        arg1 = ""
    end

    self.uActor:SpawnLocalItem(arg2, arg3, arg4, arg1)
end

function BaseActorProxy:SpawnGadget(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg5 == nil then
        arg5 = sceneData.DefaultSceneID
    elseif arg5 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg5 = sceneData.currSceneID
        end
    end

    if arg4 == nil then
        arg4 = ""
    end

    if not arg7 then
        arg7 = 0
    end

    if not arg8 then
        arg8 = 0
    end

    self.uActor:SpawnGadget(arg1, arg2, arg3, arg5, arg4, arg7, arg8)
end

function BaseActorProxy:SpawnLocalGadget(arg1, arg2, arg3, arg4, currSceneID)
    if currSceneID == nil then
        currSceneID = sceneData.DefaultSceneID
    elseif currSceneID == 0 then
        if sceneData.currSceneID ~= -1 then
            currSceneID = sceneData.currSceneID
        end
    end

    if currSceneID ~= sceneData.currSceneID then
        return
    end

    if arg1 == nil then
        arg1 = ""
    end

    self.uActor:SpawnLocalGadget(arg2, arg3, arg4, arg1)
end

function BaseActorProxy:SpawnChest(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    if arg5 == nil then
        arg5 = sceneData.DefaultSceneID
    elseif arg5 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg5 = sceneData.currSceneID
        end
    end

    if arg4 == nil then
        arg4 = ""
    end

    if arg6 == nil then
        arg6 = 0
    end

    if arg7 == nil then
        arg7 = false
    end

    if arg8 == nil then
        arg8 = 0
    end

    if not arg9 then
        arg9 = 0
    end

    self.uActor:SpawnChest(arg1, arg2, arg3, arg5, arg4, arg6, arg7, arg8, arg9)
end

function BaseActorProxy:UnSpawn(arg1, arg2)
    local entityHandler = actorMgr:GetEntityHandler(arg1)
    if entityHandler == 0 or entityHandler == nil then
        return
    end

    if arg2 == nil then
        arg2 = 0
    end

    self.uActor:UnSpawnEntity(entityHandler, arg1, arg2)
end

function BaseActorProxy:UnSpawn_MaleCond(arg1, arg2, arg3)
    local selectByPlayerIsMale = self:SelectByPlayerIsMale(arg1, arg2)
    return self:UnSpawn(selectByPlayerIsMale, arg3)
end

function BaseActorProxy:PlayCutsceneIndex(arg1, arg2, arg3, arg4, arg5)
    actorUtils.ActorDebugError("The RenWuCeHua can only call PlayCutsceneIndex from questActor")
end

function BaseActorProxy:PlayCutscene(arg1, arg2, arg3, arg4, arg5)
    actorUtils.ActorDebugError("The RenWuCeHua can only call PlayCutsceneIndex from questActor")
end

function BaseActorProxy:RegisterSelfDayTime(arg1)
    self.uActor:RegisterSelfDayTime(arg1)
end

function BaseActorProxy:UnregisterSelfDayTime(arg1)
    self.uActor:UnregisterSelfDayTime(arg1)
end

function BaseActorProxy:RegisterSelfNightTime(arg1)
    self.uActor:RegisterSelfNightTime(arg1)
end

function BaseActorProxy:UnregisterSelfNightTime(arg1)
    self.uActor:UnregisterSelfNightTime(arg1)
end

function BaseActorProxy:GetIsDay()
    self.uActor:GetIsDay()
end

function BaseActorProxy:RegisterSelfAbyssalPalaceDay(arg1)
    self.uActor:RegisterSelfAbyssalPalaceDay(arg1)
end

function BaseActorProxy:UnregisterSelfAbyssalPalaceDay(arg1)
    self.uActor:UnregisterSelfAbyssalPalaceDay(arg1)
end

function BaseActorProxy:RegisterSelfAbyssalPalaceNight(arg1)
    self.uActor:RegisterSelfAbyssalPalaceNight(arg1)
end

function BaseActorProxy:UnregisterSelfAbyssalPalaceNight(arg1)
    self.uActor:UnregisterSelfAbyssalPalaceNight(arg1)
end

function BaseActorProxy:RegisterSelfWeatherChange(arg1) end
function BaseActorProxy:UnregisterSelfWeatherChange(arg1) end

function BaseActorProxy:RegisterSelfHour(arg1)
    self.uActor:RegisterSelfHour(arg1)
end

function BaseActorProxy:UnregisterSelfHour(arg1)
    self.uActor:UnregisterSelfHour(arg1)
end

function BaseActorProxy:GetLevelTime()
    return self.uActor:GetLevelTime()
end

function BaseActorProxy:SetEffectEmitOffsetPos(arg1, arg2, arg3, arg4)
    self.uActor:SetEffectEmitOffsetPos(arg1, arg2, arg3, arg4)
end

function BaseActorProxy:SetEffectEmitPlaySpeed(arg1, arg2)
    self.uActor.SetEffectEmitPlaySpeed(arg1, arg2)
end

function BaseActorProxy:SetEffectEmitPlaySpeedWithLerp(arg1, arg2, arg3, arg4, arg5)
    self.uActor.SetEffectEmitPlaySpeedWithLerp(arg1, arg2, arg3, arg4, arg5)
end

function BaseActorProxy:SetEffectEmitVelocityMultiplier(arg1, arg2)
    self.uActor.SetEffectEmitVelocityMultiplier(arg1, arg2)
end

function BaseActorProxy:LoadSceneTagCoverEffect(arg1, arg2, arg3, arg4, arg5, arg6)
    self.uActor:LoadSceneTagCoverEffect(arg1, arg2, arg3, arg4, arg5, arg6)
end

function BaseActorProxy:CountDownUIStart(arg1, arg2, arg3, arg4)
    if arg3 == nil then
        arg3 = 0
    end

    self.uActor:CountDownUIStart(arg1, arg2, arg3, arg4)
end

function BaseActorProxy:CountDownUITerminate()
    self.uActor:CountDownUITerminate()
end

function BaseActorProxy:CountNumUIStart()
    if nil == self.uActor then
        return
    end

    self.uActor:CountNumUIStart()
end

function BaseActorProxy:CountNumUIUpdate(arg1)
    if nil == self.uActor then
        return
    end

    self.uActor:CountNumUIUpdate(arg1)
end

function BaseActorProxy:CountNumUITerminate()
    if nil == self.uActor then
        return
    end

    self.uActor:CountNumUITerminate()
end

function BaseActorProxy:ShowQuestQuitUI(arg1)
    self.uActor:ShowQuestQuit(arg1)
end

function BaseActorProxy:HideQuestQuitUI()
    self.uActor:HideQuestQuit()
end

function BaseActorProxy:ShowActivityAsterPage()
    actorUtils.ShowActivityAsterPage()
end

function BaseActorProxy:ShowActivityPage(arg1)
    actorUtils.ShowActivityPage(arg1)
end

function BaseActorProxy:ShowDragonSpinePage(arg1)
    actorUtils.ShowDragonSpinePage(arg1)
end

function BaseActorProxy:ShowFleurFairMiniGame(arg1)
    if arg1 == nil then
        arg1 = 0
    end

    actorUtils.ShowFleurFairMiniGame(arg1)
end

function BaseActorProxy:ShowChannellerSlabStagePage(arg1)
    if arg1 == nil then
        arg1 = 3
    end

    actorUtils.ShowChannellerSlabStagePage(arg1)
end

function BaseActorProxy:ShowActivityMimiTomoPage()
    actorUtils.ShowActivityMimiTomoPage()
end

function BaseActorProxy:ShowLanternRiteV2Page(arg1, arg2)
    if arg2 == nil then
        arg2 = 0
    end

    actorUtils.ShowLanternRiteV2Page(arg1, arg2)
end

function BaseActorProxy:ShowTeamPage(arg1, arg2, arg3)
    actorUtils.ShowTeamPage(arg1, arg2, arg3)
end

function BaseActorProxy:ShowBargainPage(arg1)
    actorUtils.ShowBargainPage(arg1)
end

function BaseActorProxy:BargainFixPrice(arg1)
    self.uActor:BargainFixPrice(arg1)
end

function BaseActorProxy:ShowQuestLikingBar(arg1, arg2, arg3, arg4, arg5)
    self.uActor:ShowQuestLikingBar(arg1, arg2, arg3, arg4, arg5)
end

function BaseActorProxy:SetupQuestLikingBar(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    self.uActor:SetLikingBarAttachParam(arg6, arg7, arg8, arg9)
    self.uActor:ShowQuestLikingBar(arg1, arg2, arg3, arg4, arg5)
end

function BaseActorProxy:UpdateQuestLikingBar(arg1, arg2, arg3)
    self.uActor:UpdateQuestLikingBar(arg1, arg2, arg3)
end

function BaseActorProxy:SetLikingBarAttachParam(arg1, arg2, arg3, arg4)
    self.uActor:SetLikingBarAttachParam(arg1, arg2, arg3, arg4)
end

function BaseActorProxy:HideQuestLikingBar()
    self.uActor:HideQuestLikingBar()
end

function BaseActorProxy:HideBargainLikingBar(arg1)
    self.uActor:HideBargainLikingBar(arg1)
end

function BaseActorProxy:TakeBlackScreenControl()
    actorUtils.TakeBlackScreenControl(value)
end

function BaseActorProxy:FreeBlackScreenControl()
    actorUtils.FreeBlackScreenControl()
end

function BaseActorProxy:SetBlackScreenValue(arg1)
    actorUtils.SetBlackScreenValue(1 - arg1)
end

function BaseActorProxy:ShowBlackScreen(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    if NG_HSOD_DEBUG then
        print("BaseActorProxy:ShowBlackScreen " .. tostring(self.alias))
        self:PrintTraceback()
    end

    if arg10 == nil then
        arg10 = false
    end

    if arg8 ~= nil or arg9 ~= nil then
        if arg8 == nil then
            arg8 = false
        end

        if arg9 == nil then
            arg9 = false
        end

        self.uActor:ShowBlackScreenOptional(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
        return
    end

    self.uActor:ShowBlackScreen(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg10)
end

function BaseActorProxy:ShowBlackScreenInQuest(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
    if NG_HSOD_DEBUG then
        print("BaseActorProxy:ShowBlackScreenInQuest " .. tostring(self.alias))
        self:PrintTraceback()
    end

    if arg11 == nil then
        arg11 = false
    end

    if arg9 ~= nil or arg10 ~= nil then
        if arg9 == nil then
            arg9 = false
        end

        if arg10 == nil then
            arg10 = false
        end

        self.uActor:ShowBlackScreenOptionalInQuest(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
        return
    end

    self.uActor:ShowBlackScreenInQuest(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg11)
end

function BaseActorProxy:TryAddShake(arg1, arg2, arg3, arg4)
    self.uActor:TryAddShake(arg1, arg2, arg3, arg4)
end

function BaseActorProxy:ShowTutorialDialog(arg1, arg2)
    self.uActor:ShowTutorialDialog(arg1, arg2)
end

function BaseActorProxy:ShowQuestPictureDialog(arg1, arg2)
    self.uActor:ShowQuestPictureDialog(arg1, arg2)
end

function BaseActorProxy:ShowReadingDialog(arg1)
    if arg1 ~= nil then
        self.uActor:ShowReadingDialog(arg1)
    end
end

function BaseActorProxy:CancelCurrentNavigation()
    self.uActor:CancelCurrentNavigation()
end

function BaseActorProxy:IsInNavigation()
    return self.uActor:IsInNavigation()
end

function BaseActorProxy:SetNavigationByMainId(arg1, arg2)
    self.uActor:SetNavigationByMainId(arg1, arg2)
end

function BaseActorProxy:CancelNavigation(arg1)
    self.uActor:CancelNavigation(arg1)
end

function BaseActorProxy:TryShowMoveToggle(arg1)
    self.uActor:TryShowMoveToggle(arg1)
end

function BaseActorProxy:PlayAudio(arg1)
    self.uActor:PlayAudio(arg1)
end

function BaseActorProxy:PlayAudioState(arg1, arg2)
    self.uActor:PlayAudioState(arg1, arg2)
end

function BaseActorProxy:PlayFreeCutscene(arg1, arg2, arg3, arg4)
    self.uActor:PlayFreeCutscene(arg1, arg2, arg3, arg4)
end

function BaseActorProxy:StopFreeCutscene(arg1, arg2)
    self.uActor:StopFreeCutscene(arg1, arg2)
end

function BaseActorProxy:TryPlayVideo(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    if arg2 == nil then
        arg2 = 0
    end

    if arg5 == nil then
        arg5 = M.Color(0, 0, 0, 1)
    end

    self.uActor:TryPlayVideo(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function BaseActorProxy:PlayEffect(arg1, arg2, arg3, arg4, arg5)
    if arg3 == nil then
        arg3 = M.Pos(0, 0, 0)
    end

    if arg4 == nil then
        arg4 = M.Pos(1, 1, 1)
    end

    self.uActor:PlayEffect(arg1, arg2, arg3, arg4, arg5)
end

function BaseActorProxy:PlayIndexedEffect(arg1, arg2, arg3, arg4, arg5)
    if arg4 == nil then
        arg4 = M.Pos(0, 0, 0)
    end

    if arg5 == nil then
        arg5 = M.Pos(1, 1, 1)
    end

    self.uActor:PlayIndexedEffect(arg1, arg2, arg3, arg4, arg5)
end

function BaseActorProxy:RemoveIndexedEffect(arg1)
    self.uActor:RemoveIndexedEffect(arg1)
end

function BaseActorProxy:SetEntityMaterialPropValue(arg1, arg2, arg3)
    if arg1 == nil or arg2 == nil or arg3 == nil then
        print("SetEntityMaterialPropValue Error!")
        return
    end

    self.uActor:SetEntityMaterialPropValue(arg1, arg2, arg3)
end

function BaseActorProxy:EnterSceneLookCamera(arg1, arg2, arg3, arg4, arg5)
    if arg5 == nil then
        arg5 = false
    end

    self.uActor:EnterSceneLookCamera(arg1, arg2, arg3, arg4, arg5)
end

function BaseActorProxy:EnterSceneLookCameraByAlias(arg1, arg2, arg3, arg4, arg5)
    if arg5 == nil then
        arg5 = false
    end

    self.uActor:EnterSceneLookCameraByAlias(arg1, arg2, arg3, arg4, arg5)
end

function BaseActorProxy:EnterSceneLookCameraByParam(arg1)
    self.uActor:EnterSceneLookCameraByParam(arg1)
end

function BaseActorProxy:ExitSceneLookCamera()
    self.uActor:ExitSceneLookCamera()
end

function BaseActorProxy:MakeInterInfo(arg1, arg2)
    if arg1 == nil or arg1 == "" then
        return self:MakeInterData(arg2)
    end

    return string.format("%s=%s", arg1, self:MakeInterData(arg2))
end

function BaseActorProxy:MakeInterData(arg1)
    if arg1 == nil then
        return "{}"
    end

    if arg1.targetType == nil then
        return "{}"
    end

    if arg1.targetType == EActorTargetType.Avatar then
        if arg1.configId ~= nil then
            if arg1.configId ~= 0 then
                return string.format("{type=%s,configId=%u}", "Avatar", arg1.configId)
            end
        else
            return string.format("{type=%s}", "Avatar")
        end
    else
        if arg1.targetType == EActorTargetType.Npc then
            if arg1.alias ~= nil then
                return string.format("{type=%s,alias=%s}", "Npc", arg1.alias)
            else
                return string.format("{type=%s,configId=%u,questId=%u}", "Npc", arg1.configId, arg1.subId)
            end
        else
            if arg1.targetType == EActorTargetType.QuestGadget then
                return string.format("{type=%s,configId=%u,questId=%u,alias=%s}", "QuestGadget", arg1.configId, arg1.subId, arg1.alias)
            else
                if arg1.targetType == EActorTargetType.GroupGadget then
                    return string.format("{type=%s,configId=%u,groupId=%u}", "GroupGadget", arg1.configId, arg1.subId)
                end
            end
        end
    end
end

function BaseActorProxy:RequestInteraction(arg1, arg2, arg3)
    actorUtils.ActorDebugError("The RenWuCeHua can only call request interaction from questActor")
end

function BaseActorProxy:ActionPreSafeCall(arg1)
    self.uActor:ActionPreSafeCall(arg1)
end

function BaseActorProxy:ActionSafeCall(arg1)
    self.uActor:ActionSafeCall(arg1)
end

function BaseActorProxy:AfterInterCall(arg1)
    self.uActor:AfterInterCall(arg1)
end

function BaseActorProxy:LevelLoadFinishSafeCall(arg1)
    self.uActor:LevelLoadFinishSafeCall(arg1)
end

function BaseActorProxy:LevelReadySafeCall(arg1)
    self.uActor:LevelReadySafeCall(arg1)
end

function BaseActorProxy:IsSceneInitFinishAndReady()
    return self.uActor:IsSceneInitFinishAndReady()
end

function BaseActorProxy:IsLeveReady()
    return self.uActor:IsLeveReady()
end

function BaseActorProxy:AfterMainPageActiveSafeCall(arg1, arg2)
    if arg2 == nil then
        arg2 = false
    end

    self.uActor:WaitMainPageActiveSafeCall(arg1, arg2)
end

function BaseActorProxy:GetSubQuestState(arg1)
    return self.uActor:GetSubQuestState(arg1)
end

function BaseActorProxy:TransmitPlayerUseData(arg1)
    local useTextMapId
    if arg1.textMapId ~= nil then
        useTextMapId = true
    else
        useTextMapId = false
    end

    local tbl = {
        sceneId = arg1.sceneId,
        targetPos = arg1.pos,
        targetEuler = arg1.rot,
        textMapId = arg1.textMapId,
        dialogId = arg1.dialogId,
        useTextMapId = useTextMapId,
        textShowTime = arg1.textShowTime,
        transFinishCallback = arg1.tFinishCallback,
        transPreCallback = arg1.tBlackScreenCallback,
        task = arg1.tTask,
        questId = arg1.questId,
        pointId = arg1.pointId,
        customTemplateId = arg1.customTemplateId,
        showBlackScreen = arg1.showBlackScreen,
        useWhiteScreen = arg1.useWhiteScreen,
        disableTPAudio = arg1.disableTPAudio,
        overrideTPAudioEvtName = arg1.overrideTPAudioEvtName,
        picPaths = arg1.picPaths,
        picPathsGirl = arg1.picPathsGirl,
        picAutoNextInterval = arg1.picAutoNextInterval,
        canSkipPic = arg1.canSkipPic,
        isPicLoopPlay = arg1.isPicLoopPlay,
        prefabPath = arg1.prefabPath,
        loadCtxTag = arg1.loadCtxTag,
        loadCtxCloseDelay = arg1.loadCtxCloseDelay,
        dontResetPlayerFSM = arg1.dontResetPlayerFSM,
        targetArcCurveId = arg1.targetArcCurveId,
        targetArcPointId = arg1.targetArcPointId,
        targetArcInitialSpeed = arg1.targetArcInitialSpeed,
        targetArcProgress = arg1.targetArcProgress,
        isKeepVehicle = arg1.isKeepVehicle,
        interruptInteract = arg1.interruptInteract
    }

    return self.uActor:TryTransmitPlayer(tbl)
end

function BaseActorProxy:TransmitPlayer(sceneId, targetPos, targetEuler, transFinishCallback, transPreCallback, task, arg7, arg8, showBlackScreen)
    if showBlackScreen == nil then
        showBlackScreen = true
    end

    if NG_HSOD_DEBUG and showBlackScreen then
        print("BaseActorProxy:TransmitPlayer->ShowBlackScreen " .. tostring(self.alias))
        self:PrintTraceback()
    end

    local tbl = {sceneId = sceneId, targetPos = targetPos, targetEuler = targetEuler, textMapId = {}}
    local dialogId = {}
    tbl.dialogId = dialogId
    tbl.useTextMapId = false
    tbl.textShowTime = 0
    tbl.transFinishCallback = transFinishCallback
    tbl.transPreCallback = transPreCallback
    tbl.task = task
    local questId = arg7 or dialogId
    if not arg7 then
        questId = 0
    end

    tbl.questId = questId
    local pointId = arg8 or questId
    if not arg8 then
        pointId = 0
    end

    tbl.pointId = pointId
    tbl.customTemplateId = 0
    tbl.showBlackScreen = showBlackScreen
    tbl.useWhiteScreen = false
    tbl.disableTPAudio = false
    tbl.overrideTPAudioEvtName = nil
    return self.uActor:TryTransmitPlayer(tbl)
end

function BaseActorProxy:TransmitPlayerWithText(sceneId, targetPos, targetEuler, textMapId, textShowTime, transFinishCallback, transPreCallback, task, arg9, arg10)
    if NG_HSOD_DEBUG then
        print("BaseActorProxy:TransmitPlayerWithText->ShowBlackScreen " .. tostring(self.alias))
        self:PrintTraceback()
    end

    local tbl = {sceneId = sceneId, targetPos = targetPos, targetEuler = targetEuler, textMapId = textMapId}
    local dialogId = {}
    tbl.dialogId = dialogId
    tbl.useTextMapId = true
    tbl.textShowTime = textShowTime
    tbl.transFinishCallback = transFinishCallback
    tbl.transPreCallback = transPreCallback
    tbl.task = task
    local questId = arg9 or dialogId
    if not arg9 then
        questId = 0
    end

    tbl.questId = questId
    local pointId = arg10 or questId
    if not arg10 then
        pointId = 0
    end

    tbl.pointId = pointId
    tbl.customTemplateId = 0
    tbl.showBlackScreen = true
    tbl.useWhiteScreen = false
    tbl.disableTPAudio = false
    tbl.overrideTPAudioEvtName = nil
    return self.uActor:TryTransmitPlayer(tbl)
end

function BaseActorProxy:TransmitPlayerWithDialogText(sceneId, targetPos, targetEuler, dialogId, textShowTime, transFinishCallback, transPreCallback, task, arg9, arg10, useWhiteScreen)
    if NG_HSOD_DEBUG then
        print("BaseActorProxy:TransmitPlayerWithDialogText->ShowBlackScreen " .. tostring(self.alias))
        self:PrintTraceback()
    end

    if useWhiteScreen == nil then
        useWhiteScreen = false
    end

    local tbl = {sceneId = sceneId, targetPos = targetPos, targetEuler = targetEuler}
    local textMapId = {}
    tbl.textMapId = textMapId
    tbl.dialogId = dialogId
    tbl.useTextMapId = false
    tbl.textShowTime = textShowTime
    tbl.transFinishCallback = transFinishCallback
    tbl.transPreCallback = transPreCallback
    tbl.task = task
    local questId = arg9 or textMapId
    if not arg9 then
        questId = 0
    end

    tbl.questId = questId
    local pointId = arg10 or questId
    if not arg10 then
        pointId = 0
    end

    tbl.pointId = pointId
    tbl.customTemplateId = 0
    tbl.showBlackScreen = true
    tbl.useWhiteScreen = useWhiteScreen
    tbl.disableTPAudio = false
    tbl.overrideTPAudioEvtName = nil
    return self.uActor:TryTransmitPlayer(tbl)
end

function BaseActorProxy:TransmitPlayerUseCustomizedTplId(sceneId, targetPos, targetEuler, arg4, arg5, customTemplateId, arg7, targetArcCurveId, targetArcPointId, targetArcInitialSpeed, targetArcProgress)
    if NG_HSOD_DEBUG then
        print("BaseActorProxy:TransmitPlayerUseCustomizedTplId->ShowBlackScreen " .. tostring(self.alias))
        self:PrintTraceback()
    end

    local tbl = {sceneId = sceneId, targetPos = targetPos, targetEuler = targetEuler, textMapId = {}}
    local dialogId = {}
    tbl.dialogId = dialogId
    tbl.useTextMapId = false
    tbl.textShowTime = 0
    tbl.transFinishCallback = nil
    tbl.transPreCallback = nil
    tbl.task = nil
    local questId = arg4 or dialogId
    if not arg4 then
        questId = 0
    end

    tbl.questId = questId
    local pointId = arg5 or questId
    if not arg5 then
        pointId = 0
    end

    tbl.pointId = pointId
    tbl.customTemplateId = customTemplateId
    tbl.showBlackScreen = true
    tbl.useWhiteScreen = false
    tbl.disableTPAudio = false
    tbl.overrideTPAudioEvtName = nil
    local dontResetPlayerFSM = arg7 or pointId
    if not arg7 then
        dontResetPlayerFSM = false
    end

    tbl.dontResetPlayerFSM = dontResetPlayerFSM
    tbl.targetArcCurveId = targetArcCurveId
    tbl.targetArcPointId = targetArcPointId
    tbl.targetArcInitialSpeed = targetArcInitialSpeed
    tbl.targetArcProgress = targetArcProgress
    return self.uActor:TryTransmitPlayer(tbl)
end

function BaseActorProxy:TransmitPlayerToArcLight(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    if NG_HSOD_DEBUG then
        print("BaseActorProxy:v->ShowBlackScreen " .. tostring(self.alias))
        self:PrintTraceback()
    end

    self.uActor:TransmitPlayerToArcLight(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
end

function BaseActorProxy:ShowNameDialog(arg1)
    self.uActor:TryShowNameDialog(arg1)
end

function BaseActorProxy:SayNarrator(arg1)
    if self.mainQuestID ~= nil then
        self.uActor:SayNarrator(arg1, self.mainQuestID)
    else
        self.uActor:SayNarrator(arg1)
    end
end

function BaseActorProxy:StopNarrator()
    print("BaseActorProxy:StopNarrator " .. tostring(self.alias))
    self.uActor:StopNarrator()
end

function BaseActorProxy:SayReminder(arg1, arg2)
    return self.uActor:SayReminder(arg1, arg2)
end

function BaseActorProxy:GetShowReminder(arg1, arg2)
    return self.uActor:GetShowReminder(arg1, arg2)
end

function BaseActorProxy:GetReminderDelay(arg1)
    return self.uActor:GetReminderDelay(arg1)
end

function BaseActorProxy:StopReminder(arg1)
    self.uActor:StopReminder(arg1)
end

function BaseActorProxy:SayWarningNarrator(arg1)
    if self.mainQuestID ~= nil then
        self.uActor:SayWarningNarrator(arg1, self.mainQuestID)
    else
        self.uActor:SayWarningNarrator(arg1)
    end
end

function BaseActorProxy:StopWarningNarrator()
    self.uActor:StopWarningNarrator()
end

function BaseActorProxy:TriggerLevelAbility(arg1)
    self.uActor:TriggerLevelAbility(arg1)
end

function BaseActorProxy:TriggerAbility(arg1)
    self.uActor:TriggerAbility(arg1)
end

BaseActorProxy.CurrDialogList = nil
BaseActorProxy.CurrDialogIndex = 1
BaseActorProxy.CurrDuration = 0
BaseActorProxy.CurrDurationCnt = 0
BaseActorProxy.NarratorPauseLen = 10
BaseActorProxy.NarratorResumeLen = 5
BaseActorProxy.NarratorState = NarratorState.ING
BaseActorProxy.NarratorOnFinish = nil
BaseActorProxy.ReminderID = nil

function BaseActorProxy:PerformNarrator()
    if self.CurrDialogList == nil then
        return false
    end

    if #self.CurrDialogList < self.CurrDialogIndex then
        return false
    end

    local currDialog = self.CurrDialogList[self.CurrDialogIndex]
    if currDialog == nil then
        return false
    end

    local dialogID = currDialog.dialogID
    self.ReminderID = currDialog.reminderID
    self.CurrDurationCnt = 0
    if self.ReminderID ~= nil then
        currDialog.dialogID = self:GetShowReminder(self.ReminderID, dialogID)
        if currDialog.dialogID == 0 then
            self:StopReminder(self.ReminderID)
            self.ReminderID = nil
            self.CurrDialogIndex = self.CurrDialogIndex + 1
            return self:PerformNarrator()
        end

        local reminderDelay = self.CurrDialogIndex - 1
        self.CurrDialogIndex = reminderDelay
        if dialogID == nil then
            reminderDelay = self:GetReminderDelay(currDialog.dialogID)
            self.CurrDuration = reminderDelay
        end

        if dialogID == nil then
            reminderDelay = self.CurrDuration
        end

        if reminderDelay == 0 then
            self.CurrDuration = self:SayReminder(self.ReminderID, currDialog.dialogID)
        end
    elseif dialogID ~= nil then
        self.CurrDuration = currDialog.duration
        local audioEvtName = currDialog.audioEvtName
        self:SayNarrator(dialogID)
        if audioEvtName ~= nil and audioEvtName ~= "" then
            self:PlayAudio(audioEvtName)
        end
    end

    return true
end

function BaseActorProxy:StopPerformNarrator()
    if self.ReminderID ~= nil then
        self:StopReminder(self.ReminderID)
    else
        self:StopNarrator()
    end
end

function BaseActorProxy:StartNarrator(arg1)
    self.NarratorState = NarratorState.ING
    if self:IsSayingWarningNarrator() == true then
        self.CurrDialogIndex = 0
        return
    end

    self.CurrDialogIndex = 1
    if self:PerformNarrator() ~= true then
        arg1:FinishTask()
    end
end

function BaseActorProxy:ResumeNarrator(arg1)
    if self.isUserPauseNarrator == true then
        return
    end

    self.CurrDuration = 0
end

function BaseActorProxy:PauseNarrator(arg1)
    self:StopPerformNarrator()
end

function BaseActorProxy:PrintTraceback(arg1)
    if NG_HSOD_DEBUG then
        print(debug.traceback())
    end
end

function BaseActorProxy:PrintEvent(arg1)
    if NG_HSOD_DEBUG then
        print(arg1)
        if self.alias == nil then
            actorUtils.TrackLog(arg1, 0)
        else
            actorUtils.TrackLog(self.alias .. arg1, 0)
        end
    end
end

function BaseActorProxy:TryPauseCurOnlyNarrator()
    self.isUserPauseNarrator = true
    self:StopPerformNarrator()
end

function BaseActorProxy:TryResumeCurOnlyNarrator()
    self.isUserPauseNarrator = nil
    self:PerformNarrator()
end

function BaseActorProxy:TryPauseCurAutoNarrator(arg1)
    if arg1 == nil then
        arg1 = false
    end

    self.uActor:TryPauseNarratorOnlyAutoTask(arg1)
end

function BaseActorProxy:TryResumeCurAutoNarrator()
    self.uActor:TryResumeNarratorOnlyAutoTask()
end

function BaseActorProxy:FinishNarrator(arg1)
    self:StopPerformNarrator()
    if self.NarratorOnFinish ~= nil then
        self:NarratorOnFinish(arg1)
    end
end

function BaseActorProxy:CheckNarratorOnly(arg1, arg2)
    if self.isUserPauseNarrator == true then
        return
    end

    self.CurrDurationCnt = self.CurrDurationCnt + arg2
    if self.NarratorState == NarratorState.PAUSING then
        if self.CurrDurationCnt >= self.CurrDuration then
            self:StopPerformNarrator()
        end
    end

    if self:IsSayingWarningNarrator() == true then
        return
    end

    if self.NarratorState == NarratorState.ING then
        if self.CurrDurationCnt >= self.CurrDuration then
            self.CurrDialogIndex = self.CurrDialogIndex + 1
            if self:PerformNarrator() ~= true then
                self:StopPerformNarrator()
                self.NarratorState = NarratorState.PAUSING
                arg1:FinishTask()
                return
            end
        end
    end
end

function BaseActorProxy:ShowMessage(arg1)
    actorUtils.ShowMessage(arg1)
end

function BaseActorProxy:ShowTextMapWithParam(arg1, arg2)
    actorUtils.ShowTextMapWithParam(arg1, arg2)
end

function BaseActorProxy:GetCameraPos()
    return actorUtils.GetCameraPos()
end

function BaseActorProxy:GetCameraEuler()
    return actorUtils.GetCameraEuler()
end

function BaseActorProxy:CheckNarrator(arg1, arg2)
    self.CurrDurationCnt = self.CurrDurationCnt + arg2
    if self.NarratorState == NarratorState.PAUSING then
        if self.CurrDurationCnt >= self.CurrDuration then
            self:StopPerformNarrator()
        end
    end

    if self:IsSayingWarningNarrator() == true then
        return
    end

    local distFromAvatarToSelf = self:GetDistFromAvatarToSelf()
    if 0 <= self.NarratorPauseLen then
        if distFromAvatarToSelf > self.NarratorPauseLen then
            if self.NarratorState == NarratorState.ING then
                self.NarratorState = NarratorState.PAUSING
            end
        end
    else
        if distFromAvatarToSelf <= self.NarratorResumeLen then
            if self.NarratorState == NarratorState.PAUSING then
                self.NarratorState = NarratorState.ING
            end
        end
    end

    if self.NarratorState == NarratorState.ING then
        if self.CurrDurationCnt >= self.CurrDuration then
            self.CurrDialogIndex = self.CurrDialogIndex + 1
            if self:PerformNarrator() ~= true then
                arg1:FinishTask()
                self:StopPerformNarrator()
                self.NarratorState = NarratorState.PAUSING
                return
            end
        end
    end
end

BaseActorProxy.WarningNarratorTable = {}
function BaseActorProxy:StartWarningNarrator(arg1) end

function BaseActorProxy:PerformWarningNarrator(arg1)
    if arg1.WarningDialogList == nil then
        return false
    end

    if #arg1.WarningDialogList < arg1.WarningDialogIndex then
        return false
    end

    local warningDialog = arg1.WarningDialogList[arg1.WarningDialogIndex]
    if warningDialog == nil then
        return false
    end

    local dialogID = warningDialog.dialogID
    arg1.WarningDuration = warningDialog.duration
    arg1.WarningDurationCnt = 0
    local audioEvtName = warningDialog.audioEvtName
    arg1.StopNarratorFlag = false
    self:SayWarningNarrator(dialogID)
    if audioEvtName ~= nil and audioEvtName ~= "" then
        self:PlayAudio(audioEvtName)
    end

    return true
end

function BaseActorProxy:IsSayingWarningNarrator()
    for k, warningNarrator in pairs(self.WarningNarratorTable) do
        if warningNarrator.WarningNarratorState == NarratorState.ING then
            return true
        end
    end

    return false
end

function BaseActorProxy:CheckStopWarningNarrator()
    for k, warningNarrator in pairs(self.WarningNarratorTable) do
        if warningNarrator.StopNarratorFlag == false then
            return
        end
    end

    self:StopWarningNarrator()
end

function BaseActorProxy:CheckWarningNarrator(arg1, arg2)
    local warningNarrator = self.WarningNarratorTable[arg1.taskQueueID]
    warningNarrator.WarningDurationCnt = warningNarrator.WarningDurationCnt + arg2
    if warningNarrator.OnCheckSpeak(self) == true then
        if warningNarrator.WarningNarratorState == NarratorState.PAUSING then
            warningNarrator.WarningNarratorState = NarratorState.ING
        end
    else
        if warningNarrator.WarningNarratorState == NarratorState.ING then
            warningNarrator.WarningNarratorState = NarratorState.PAUSING
        end
    end

    if warningNarrator.WarningNarratorState == NarratorState.PAUSING then
        if warningNarrator.StopNarratorFlag == false then
            if warningNarrator.WarningDurationCnt >= warningNarrator.WarningDuration then
                warningNarrator.StopNarratorFlag = true
                self:CheckStopWarningNarrator()
                warningNarrator.WarningDurationCnt = 0
            end
        end
    else
        if warningNarrator.WarningNarratorState == NarratorState.ING then
            if warningNarrator.WarningDurationCnt >= warningNarrator.WarningDuration then
                warningNarrator.WarningDialogIndex = warningNarrator.WarningDialogIndex + 1
                if self:PerformWarningNarrator(warningNarrator) ~= true then
                    warningNarrator.WarningDialogIndex = 0
                end
            end
        end
    end
end

function BaseActorProxy:ResumeWarningNarrator(arg1)
    local warningNarrator = self.WarningNarratorTable[arg1.taskQueueID]
    warningNarrator.WarningDuration = 0
    if warningNarrator.OnCheckSpeak(self) == true then
        if warningNarrator.WarningNarratorState == NarratorState.PAUSING then
            warningNarrator.WarningNarratorState = NarratorState.ING
        end
    else
        if warningNarrator.WarningNarratorState == NarratorState.ING then
            warningNarrator.WarningNarratorState = NarratorState.PAUSING
        end
    end

    if warningNarrator.WarningNarratorState == NarratorState.PAUSING then
        if warningNarrator.StopNarratorFlag == false then
            warningNarrator.StopNarratorFlag = true
            self:CheckStopWarningNarrator()
        end
    else
        if warningNarrator.WarningNarratorState == NarratorState.ING then
            if self:PerformWarningNarrator(warningNarrator) ~= true then
                warningNarrator.WarningDialogIndex = 0
            end
        end
    end
end

function BaseActorProxy:PauseWarningNarrator(arg1)
    self.WarningNarratorTable[arg1.taskQueueID].StopNarratorFlag = true
    self:CheckStopWarningNarrator()
end

function BaseActorProxy:DestroyWarningNarrator(arg1)
    local warningNarrator = self.WarningNarratorTable[arg1.taskQueueID]
    warningNarrator.StopNarratorFlag = true
    self:CheckStopWarningNarrator()
    if warningNarrator.OnFinish ~= nil then
        warningNarrator.OnFinish(self, arg1)
    end
end

function BaseActorProxy:ClearNarratorTask(arg1)
    self.uActor:ClearNarratorTask()
    self:ClearTask(TaskID.NARRATOR_TASK_ID)
    if arg1 == true then
        self:StopPerformNarrator()
    end
end

function BaseActorProxy:NarratorTask(currDialogList, narratorPauseLen, narratorResumeLen, narratorOnFinish, arg5, mainQuestID, arg7)
    if self ~= nil then
        if self.uActor ~= nil then
            goto lbl_10
        end
    end

    print("error : NarratorTask, self or uActor is nil.")
    do
        return
    end

    ::lbl_10::
    self.ClearNarratorTask(self)
    if #currDialogList < 0 then
        return nil
    end

    if arg7 == nil then
        arg7 = false
    end

    if actorUtils.IsInMainPage() == false then
        if arg7 then
            self.LogError(self, "NarratorTask call second.")
            return nil
        end

        self.AfterMainPageActiveSafeCall(self, function()
            if self ~= nil then
                if self.uActor ~= nil then
                    goto lbl_11
                end
            end

            print("error : NarratorTask, self or uActor is nil.")
            do
                return
            end

            ::lbl_11::
            self:NarratorTask(currDialogList, narratorPauseLen, narratorResumeLen, narratorOnFinish, arg5, mainQuestID, true)
        end)

        return nil
    end

    print("NarratorTask", currDialogList[1].dialogID)
    self.CurrDialogList = currDialogList
    if narratorPauseLen ~= nil then
        self.NarratorPauseLen = narratorPauseLen
    end

    if narratorResumeLen ~= nil then
        self.NarratorResumeLen = narratorResumeLen
    end

    self.NarratorOnFinish = narratorOnFinish
    if arg5 == nil then
        arg5 = "Talk"
    end

    if mainQuestID ~= nil then
        self.mainQuestID = mainQuestID
    end

    local task = self.CreateTask(self, TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL, arg5)
    task:StartEvent("+", self.StartNarrator)
    task:TickEvent("+", self.CheckNarrator)
    task:ResumeEvent("+", self.ResumeNarrator)
    task:PauseEvent("+", self.PauseNarrator)
    task:FinishEvent("+", self.FinishNarrator)
    self.uActor:ManualNarratorTask(task)
end

function BaseActorProxy:NarratorTaskLegacy(arg1, arg2, arg3, arg4, tag, arg6)
    self.ClearNarratorTask(self)
    local count = #arg1
    if count <= 0 then
        return nil
    end

    if arg6 == nil then
        arg6 = self.mainQuestID
    end

    local dialogList = {}
    local tbl = {}
    tbl.dialogList = nil
    tbl.pauseLen = arg2
    tbl.resumeLen = arg3
    tbl.tag = tag
    for i = 1, count do
        dialogList[i] = arg1[i].dialogID
    end

    tbl.dialogList = dialogList
    if actorUtils.IsInMainPage() then
        self.uActor:NarratorAutoTask(tbl, arg4, arg6)
    else
        self.AfterMainPageActiveSafeCall(self, function()
            if self ~= nil then
                if self.uActor ~= nil then
                    goto lbl_11
                end
            end

            print("error : NarratorTaskLegacy, self or uActor is nil.")
            do
                return
            end

            ::lbl_11::
            self.uActor:NarratorAutoTask(tbl, arg4, arg6)
        end)
    end
end

function BaseActorProxy:NarratorTaskByData(arg1, arg2, arg3)
    if arg3 == nil then
        arg3 = self.mainQuestID
    end

    self.ClearNarratorTask(self)
    if actorUtils.IsInMainPage() then
        self.uActor:NarratorAutoTask(arg1, arg2, arg3)
    else
        self.AfterMainPageActiveSafeCall(self, function()
            if self ~= nil then
                if self.uActor ~= nil then
                    goto lbl_11
                end
            end

            print("error : NarratorAutoTask, self or uActor is nil.")
            do
                return
            end

            ::lbl_11::
            self.uActor:NarratorAutoTask(arg1, arg2, arg3)
        end)
    end
end

function BaseActorProxy:NarratorOnlyTask(currDialogList, narratorOnFinish, arg3, arg4)
    if self ~= nil then
        if self.uActor ~= nil then
            goto lbl_10
        end
    end

    print("error : NarratorOnlyTask, self or uActor is nil.")
    do
        return
    end

    ::lbl_10::
    self.ClearNarratorTask(self)
    if #currDialogList < 0 then
        return nil
    end

    if arg4 == nil then
        arg4 = false
    end

    if actorUtils.IsInMainPage() == false then
        if arg4 then
            self.LogError(self, "NarratorOnlyTask call second.")
            return nil
        end

        self.AfterMainPageActiveSafeCall(self, function()
            if self ~= nil then
                if self.uActor ~= nil then
                    goto lbl_11
                end
            end

            print("error : NarratorOnlyTask, self or uActor is nil.")
            do
                return
            end

            ::lbl_11::
            self:NarratorOnlyTask(currDialogList, narratorOnFinish, arg3, true)
        end)

        return nil
    end

    print("NarratorOnlyTask", currDialogList[1].dialogID)
    self.CurrDialogList = currDialogList
    self.NarratorOnFinish = narratorOnFinish
    self.isUserPauseNarrator = nil
    if arg3 == nil then
        arg3 = "Talk"
    end

    local task = self.CreateTask(self, TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL, arg3)
    task:StartEvent("+", self.StartNarrator)
    task:TickEvent("+", self.CheckNarratorOnly)
    task:ResumeEvent("+", self.ResumeNarrator)
    task:PauseEvent("+", self.PauseNarrator)
    task:FinishEvent("+", self.FinishNarrator)
    self.uActor:ManualNarratorTask(task)
end

function BaseActorProxy:NarratorOnlyTaskLegacy(arg1, arg2, tag, arg4)
    self.ClearNarratorTask(self)
    local count = #arg1
    if count <= 0 then
        return nil
    end

    if arg4 == nil then
        arg4 = self.mainQuestID
    end

    local dialogList = {}
    local tbl = {}
    tbl.dialogList = nil
    tbl.pauseLen = pauseLen
    tbl.resumeLen = resumeLen
    tbl.tag = tag
    tbl.hasAudio = true
    for i = 1, count do
        dialogList[i] = arg1[i].dialogID
    end

    tbl.dialogList = dialogList
    if actorUtils.IsInMainPage() then
        self.uActor:NarratorOnlyAutoTask(tbl, arg2, arg4)
    else
        self.AfterMainPageActiveSafeCall(self, function()
            if self ~= nil then
                if self.uActor ~= nil then
                    goto lbl_11
                end
            end

            print("error : NarratorOnlyTaskLegacy, self or uActor is nil.")
            do
                return
            end

            ::lbl_11::
            self.uActor:NarratorOnlyAutoTask(tbl, arg2, arg4)
        end)
    end
end

function BaseActorProxy:NarratorOnlyTaskByDataSpecifyingResumeReminder(arg1, arg2, arg3, arg4)
    self:NarratorOnlyTaskByData(arg1, arg2, arg3, nil, 0, false, arg4)
end

function BaseActorProxy:NarratorOnlyTaskByData(arg1, arg2, arg3, arg4, dialogIndex, arg6, arg7)
    if self ~= nil then
        if self.uActor ~= nil then
            goto lbl_10
        end
    end

    print("error : NarratorOnlyTaskByData , self or uActor is nil.")
    do
        return
    end

    ::lbl_10::
    if arg3 == nil then
        arg3 = self.mainQuestID
    end

    if arg6 == nil then
        arg6 = false
    end

    self.ClearNarratorTask(self)
    if actorUtils.IsInMainPage() then
        if arg1 ~= nil then
            if arg1.hasAudio == nil then
                arg1.hasAudio = false
            end
        end

        if nil ~= arg7 then
            self.OverrideNarratorResumeReminder(self, arg7)
        end

        local narratorOnlyAutoTask = self.uActor:NarratorOnlyAutoTask(arg1, arg2, arg3)
        if nil ~= narratorOnlyAutoTask then
            narratorOnlyAutoTask:FinishEvent("+", self.RecoverNarratorResumeReminder)
            narratorOnlyAutoTask:DestroyEvent("+", self.RecoverNarratorResumeReminder)
            if arg4 ~= nil then
                narratorOnlyAutoTask:DestroyEvent("+", arg4)
            end

            if dialogIndex ~= nil then
                narratorOnlyAutoTask.dialogIndex = dialogIndex
            end
        end
    else
        if arg6 then
            self.LogError(self, "NarratorOnlyTaskByData call second.")
            return
        end

        self.AfterMainPageActiveSafeCall(self, function()
            if self ~= nil then
                if self.uActor ~= nil then
                    goto lbl_11
                end
            end

            print("NarratorOnlyTaskByData call , self or uActor is nil.")
            do
                return
            end

            ::lbl_11::
            self:NarratorOnlyTaskByData(arg1, arg2, arg3, arg4, dialogIndex, true, arg7)
        end)
    end
end

function BaseActorProxy:NarratorOnlyTaskByDataWithPriority(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = self.mainQuestID
    end

    if arg3 == nil then
        arg3 = 0
    end

    self:NarratorOnlyTaskByDataWithPriorityInternal(arg1, arg2, arg3, 0)
end

function BaseActorProxy:NarratorOnlyTaskByDataWithPriorityInternal(arg1, arg2, arg3, arg4)
    if self.uActor == nil then
        print("error : NarratorOnlyTaskByData , self or uActor is nil.")
        return
    end

    if 0 < arg3 then
        if actorUtils.IsCanPlayNarratorWithPriority(arg3) == false then
            print("narrator cannot play : not allowed to play.")
            return
        end
    end

    if arg2 == nil then
        arg2 = self.mainQuestID
    end

    if arg1 ~= nil then
        if arg1.hasAudio == nil then
            arg1.hasAudio = false
        end
    end

    self:ClearNarratorTask()
    if nil ~= arg4 then
        self:OverrideNarratorResumeReminder(arg4)
    end

    local narratorTaskByDataWithPriority = self.uActor:NarratorTaskByDataWithPriority(arg1, arg2, arg3)
    if nil ~= narratorTaskByDataWithPriority then
        narratorTaskByDataWithPriority:FinishEvent("+", self.RecoverNarratorResumeReminder)
        narratorTaskByDataWithPriority:DestroyEvent("+", self.RecoverNarratorResumeReminder)
    end
end

function BaseActorProxy:OverrideNarratorResumeReminder(taskOnResumeOverrideReminder)
    if nil ~= taskOnResumeOverrideReminder then
        print("Override narrator resume reminder")
        self.TaskOnResumeOverrideReminder = taskOnResumeOverrideReminder
    end
end

function BaseActorProxy:RecoverNarratorResumeReminder()
    print("Recover narrator resume reminder")
    self.TaskOnResumeOverrideReminder = -1
end

function BaseActorProxy:WarningNarratorTask(arg1, warningDialogList, onCheckSpeak, onFinish, arg5, mainQuestID)
    if #warningDialogList < 0 then
        return nil
    end

    local n = arg1 + TaskID.WARNING_TASK_ID
    self.WarningNarratorTable[n] = {}
    local warningNarrator = self.WarningNarratorTable[n]
    if warningNarrator.WarningDuration == nil then
        warningNarrator.WarningDuration = 0
    end

    warningNarrator.WarningDurationCnt = 0
    warningNarrator.WarningDialogList = warningDialogList
    warningNarrator.OnCheckSpeak = onCheckSpeak
    warningNarrator.WarningDialogIndex = 0
    warningNarrator.StopNarratorFlag = true
    warningNarrator.WarningNarratorState = NarratorState.PAUSING
    warningNarrator.OnFinish = onFinish
    if arg5 == nil then
        arg5 = "Talk"
    end

    if mainQuestID ~= nil then
        self.mainQuestID = mainQuestID
    end

    local task = self:CreateTask(n, LuaTaskType.NORMAL, arg5)
    task:StartEvent("+", self.StartWarningNarrator)
    task:TickEvent("+", self.CheckWarningNarrator)
    task:PauseEvent("+", self.PauseWarningNarrator)
    task:ResumeEvent("+", self.ResumeWarningNarrator)
    task:DestroyEvent("+", self.DestroyWarningNarrator)
    return task
end

function BaseActorProxy:SafeCircleTask(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg7 == nil then
        print("SafeCircleCallImpl trigger call is nil.")
        return 0
    end

    self:ClearSafeCircleTask()
    if arg8 == nil then
        arg8 = "SafeCircle"
    end

    local task = self:CreateTask(TaskID.SAFE_CIRCLE, LuaTaskType.SAFE_CIRCLE, arg8)
    if arg3 == nil then
        arg3 = sceneData.DefaultSceneID
    elseif arg3 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg3 = sceneData.currSceneID
        end
    end

    if arg4 == nil then
        arg4 = false
    end

    if arg5 == nil then
        arg5 = true
    end

    if arg6 == nil or arg6 <= 0 then
        arg6 = 2
    end

    task:StartCheck(arg1, arg2, arg3, arg5, arg6, arg7, arg4, true)
end

function BaseActorProxy:ClearSafeCircleTask()
    self:ClearTask(TaskID.SAFE_CIRCLE)
end

function BaseActorProxy:CreateActorHandler(arg1, arg2, arg3, arg4, arg5)
    local handler = actorHandlerUtils.CreateHandler(arg1, self.uActor, arg2, arg3, arg4, arg5)
    return handler
end

function BaseActorProxy:CancelActorHandler(arg1, arg2)
    self.uActor:CancelActorHandler(arg1, arg2)
end

function BaseActorProxy:AddAvatarHPWatcher(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    self:CancelAvatarHPWatcher(arg1)
    local actorHandler = self:CreateActorHandler(LuaActorHandlerType.AvatarFightPropWatcher, arg1, arg6, arg7, nil)
    if actorHandler ~= nil then
        actorHandler:Setup(arg2, arg3, 1010, 2000, arg4, arg5)
        actorHandler:Start()
    end
end

function BaseActorProxy:CancelAvatarHPWatcher(arg1)
    self:CancelActorHandler(LuaActorHandlerType.AvatarFightPropWatcher, arg1)
end

function BaseActorProxy:SetAvatarPos(avatarPos)
    self.uActor:SetAvatarPos(avatarPos)
end

function BaseActorProxy:SetOpenState(arg1, arg2)
    self.uActor:SetOpenState(arg1, arg2)
end

function BaseActorProxy:DisableMainPageUI(arg1)
    if arg1 == nil then
        arg1 = true
    end

    self.uActor:DisableMainPageUI(arg1)
end

function BaseActorProxy:DisableMainPageWithConfig(arg1, arg2)
    if arg1 == nil then
        arg1 = true
    end

    self.uActor:DisableMainPageWithConfig(arg1, arg2)
end

function BaseActorProxy:EnablePlayerInput(arg1, arg2)
    if arg2 == nil then
        arg2 = false
    end

    self.uActor:EnablePlayerInput(arg1, arg2)
end

function BaseActorProxy:ShowPage(arg1)
    self.uActor:ShowPage(arg1)
end

function BaseActorProxy:InvokePageFunction(arg1)
    return self.uActor:InvokePageFunction(arg1)
end

function BaseActorProxy:BackPage(arg1)
    self.uActor:BackPage(arg1)
end

function BaseActorProxy:InvokeOnInteraction(arg1) end
function BaseActorProxy:InvokeOnAbility(arg1) end

function BaseActorProxy:SayDialogAudio(arg1)
    if self.uActor ~= nil then
        self.uActor:SayDialogAudio(arg1)
    end
end

function BaseActorProxy:EnterSneakMode(arg1)
    self.uActor:EnterSneakMode(arg1)
end

function BaseActorProxy:ExitSneakMode()
    self.uActor:ExitSneakMode()
end

function BaseActorProxy:EnterWildSneakMode(arg1)
    self.uActor:EnterWildSneakMode(arg1)
end

function BaseActorProxy:ExitWildSneakMode()
    self.uActor:ExitWildSneakMode()
end

function BaseActorProxy:EnterTailMode(arg1)
    self.uActor:EnterTailMode(arg1)
end

function BaseActorProxy:ExitTailMode()
    self.uActor:ExitTailMode()
end

function BaseActorProxy:EnterCombatSneakMode(arg1)
    self.uActor:EnterCombatSneakMode(arg1)
end

function BaseActorProxy:ExitCombatSneakMode()
    self.uActor:ExitCombatSneakMode()
end

function BaseActorProxy:EnterBomberMode()
    self.uActor:EnterBomberMode()
end

function BaseActorProxy:ExitBomberMode()
    self.uActor:ExitBomberMode()
end

function BaseActorProxy:EnterFindCatMode()
    self.uActor:EnterFindCatMode()
end

function BaseActorProxy:ExitFindCatMode()
    self.uActor:ExitFindCatMode()
end

function BaseActorProxy:ForceFlushRemove()
    self.uActor:ForceFlushRemove()
end

function BaseActorProxy:TriggerNpcSpeechBubble(arg1, arg2)
    if self.uActor ~= nil then
        self.uActor:TriggerNpcSpeechBubble(arg1, arg2)
    end
end

function BaseActorProxy:ClearNpcSpeechBubble(arg1)
    if self.uActor ~= nil then
        self.uActor:ClearNpcSpeechBubble(arg1)
    end
end

function BaseActorProxy:BanAvatarFreeStyle()
    actorUtils.BanAvatarFreeStyle()
end

function BaseActorProxy:ResumeAvatarFreeStyle()
    actorUtils.ResumeAvatarFreeStyle()
end

function BaseActorProxy:CallOnAvatarSit(arg1)
    actorUtils.CallOnAvatarSit(arg1)
end

function BaseActorProxy:CallOnAvatarStand(arg1)
    actorUtils.CallOnAvatarStand(arg1)
end

function BaseActorProxy:CallOnElemViewOpen(arg1)
    actorUtils.CallOnElemViewOpen(arg1)
end

function BaseActorProxy:CallOnElemViewClose(arg1)
    actorUtils.CallOnElemViewClose(arg1)
end

function BaseActorProxy:CallOnDoorOpen(arg1)
    actorUtils.CallOnDoorOpen(arg1)
end

function BaseActorProxy:UncallOnDoorOpen()
    actorUtils.UncallOnDoorOpen()
end

function BaseActorProxy:RequestCoopInteractionFromSubStartPoint(arg1, arg2)
    self.uActor:RequestCoopInteractionFromSubStartPoint(arg1, arg2)
end

function BaseActorProxy:RemoveCoopInteractionDataFromSubStartPoint(arg1, arg2)
    self.uActor:RemoveCoopInteractionDataFromSubStartPoint(arg1, arg2)
end

function BaseActorProxy:RemoveCoopInteractionData(arg1)
    self.uActor:RemoveCoopInteractionData(arg1)
end

function BaseActorProxy:ShowMapEffect(arg1, arg2)
    if self.uActor ~= nil then
        self.uActor:ShowMapEffect(arg1, arg2)
    end
end

function BaseActorProxy:StartMainQTE(arg1)
    self.uActor:StartMainQTE(arg1)
end

function BaseActorProxy:EnableElementView(arg1)
    if self.uActor ~= nil then
        self.uActor:EnableElementView(arg1)
    end
end

function BaseActorProxy:EnableSpecialElementView(arg1, arg2, arg3, arg4, arg5, arg6)
    if self.uActor ~= nil then
        if arg1 == false then
            arg3 = 0
            arg4 = M.Color(1, 1, 1, 1)
            arg5 = 0
            arg6 = nil
        end

        self.uActor:EnableSpecialElementView(arg1, arg2, arg3, arg4, arg5, arg6)
    end
end

function BaseActorProxy:SetFlyStateParams(arg1, arg2, arg3, arg4, arg5)
    if arg1 == nil then
        arg1 = -1
    end

    if arg2 == nil then
        arg2 = -1
    end

    if arg3 == nil then
        arg3 = -1
    end

    if arg4 == nil then
        arg4 = 1
    end

    if arg5 == nil then
        arg5 = -1
    end

    self.uActor:SetFlyStateParams(arg1, arg2, arg3, arg4, arg5)
end

function BaseActorProxy:ResetFlyStateParams()
    self.uActor:ResetFlyStateParams()
end

BaseActorProxy.TaskOnResumeDelay = 1
BaseActorProxy.TaskOnPauseReminder = 0
BaseActorProxy.TaskOnResumeReminder = 0
BaseActorProxy.TaskOnResumeOverrideReminder = -1

function BaseActorProxy:StopRealReminder()
    self:StopReminder(self.TaskOnPauseReminder)
end

function BaseActorProxy:StopPlayerCombat()
    self:StopReminder(self.TaskOnResumeReminder)
    self:DelayResumeByTag("PlayerCombat")
end

function BaseActorProxy:StopOpenPage()
    self:StopReminder(self.TaskOnResumeReminder)
    self:DelayResumeByTag("OpenPage")
end

function BaseActorProxy:StopOpenMainPage()
    self:StopReminder(self.TaskOnResumeReminder)
    self:DelayResumeByTag("OpenMainPage")
end

function BaseActorProxy:PlayerCombatOnPause()
    local sayReminder = self:SayReminder(self.TaskOnPauseReminder, self:GetShowReminder(self.TaskOnPauseReminder, 0))
    self:CallDelay(sayReminder, self.StopRealReminder)
end

function BaseActorProxy:PlayerCombatOnResume()
    if self:HasTaskResumed("Story") == false then
        return
    end

    if self:HasTagTask("Story") == false then
        self:DelayResumeByTag("PlayerCombat")
        return
    end

    local taskOnResumeOverrideReminder
    if 0 <= self.TaskOnResumeOverrideReminder then
        taskOnResumeOverrideReminder = self.TaskOnResumeOverrideReminder
    else
        taskOnResumeOverrideReminder = self.TaskOnResumeReminder
    end

    local sayReminder = self:SayReminder(taskOnResumeOverrideReminder, self:GetShowReminder(taskOnResumeOverrideReminder, 0))
    self:CallDelay(sayReminder, self.StopPlayerCombat)
end

function BaseActorProxy:OpenPageOnResume()
    if self:HasTaskResumed("Story") == false then
        return
    end

    if self:HasTagTask("Story") == false then
        self:DelayResumeByTag("OpenPage")
        return
    end

    local runingTask = self:GetRuningTask(TaskID.NARRATOR_TASK_ID)
    if runingTask ~= nil then
        if runingTask.IsPausedByUser ~= true then
            if runingTask.IsForcePaused ~= true then
                goto lbl_35
            end
        end

        print("narrator is paused by user.")
        self:DelayResumeByTag("OpenPage")
        return
    end

    ::lbl_35::
    if runingTask ~= nil then
        if runingTask.hasSayDialog == false then
            print("ok we get narrator task and say nothing, so just stop open page.")
            self:DelayResumeByTag("OpenPage")
            return
        end
    end

    local taskOnResumeOverrideReminder
    if 0 <= self.TaskOnResumeOverrideReminder then
        taskOnResumeOverrideReminder = self.TaskOnResumeOverrideReminder
    else
        taskOnResumeOverrideReminder = self.TaskOnResumeReminder
    end

    local sayReminder = self:SayReminder(taskOnResumeOverrideReminder, self:GetShowReminder(taskOnResumeOverrideReminder, 0))
    self:CallDelay(sayReminder, self.StopOpenPage)
end

function BaseActorProxy:OpenMainPageOnResume()
    if self:HasTaskResumed("StoryInMainPage") == false then
        return
    end

    if self:HasTagTask("StoryInMainPage") == false then
        self:DelayResumeByTag("OpenMainPage")
        return
    end

    local runingTask = self:GetRuningTask(TaskID.NARRATOR_TASK_ID)
    if runingTask ~= nil then
        if runingTask.IsPausedByUser ~= true then
            if runingTask.IsForcePaused ~= true then
                goto lbl_35
            end
        end

        print("narrator is paused by user.")
        self:DelayResumeByTag("OpenMainPage")
        return
    end

    ::lbl_35::
    if runingTask ~= nil then
        if runingTask.hasSayDialog == false then
            print("ok we get narrator task and say nothing, so just stop open page.")
            self:DelayResumeByTag("OpenMainPage")
            return
        end
    end

    local taskOnResumeOverrideReminder
    if 0 <= self.TaskOnResumeOverrideReminder then
        taskOnResumeOverrideReminder = self.TaskOnResumeOverrideReminder
    else
        taskOnResumeOverrideReminder = self.TaskOnResumeReminder
    end

    local sayReminder = self:SayReminder(taskOnResumeOverrideReminder, self:GetShowReminder(taskOnResumeOverrideReminder, 0))
    self:CallDelay(sayReminder, self.StopOpenMainPage)
end

function BaseActorProxy:EmptyCB() end

function BaseActorProxy:PlayerSitOnChair()
    self.uActor:PlayerSitOnChair()
end

function BaseActorProxy:PlayerStandFromChair(arg1)
    if arg1 == nil then
        arg1 = 0
    end

    self.uActor:PlayerStandFromChair(arg1)
end

function BaseActorProxy:IsPlayerSitOnChair(arg1, arg2, arg3)
    if self.uActor == nil then
        return false
    end

    if arg1 == nil then
        arg1 = sceneData.DefaultSceneID
    elseif arg1 == 0 then
        if sceneData.currSceneID ~= -1 then
            arg1 = sceneData.currSceneID
        end
    end

    return self.uActor:IsPlayerSitOnChair(arg1, arg2, arg3)
end

function BaseActorProxy:RegisterTaskCB()
    if self.TaskOnPauseReminder == 0 then
        return
    end

    self.RegisterTaskTagCB(self, "PlayerCombat", self.PlayerCombatOnPause, function()
        self:UnCallFunc(self.PlayerCombatOnResume)
        self:CallDelay(self.TaskOnResumeDelay, self.PlayerCombatOnResume)
    end)

    self.RegisterTaskTagCB(self, "OpenPage", self.EmptyCB, function()
        self:UnCallFunc(self.OpenPageOnResume)
        self:CallDelay(self.TaskOnResumeDelay, self.OpenPageOnResume)
    end)

    self.RegisterTaskTagCB(self, "OpenMainPage", self.EmptyCB, function()
        self:UnCallFunc(self.OpenMainPageOnResume)
        self:CallDelay(self.TaskOnResumeDelay, self.OpenMainPageOnResume)
    end)
end

function BaseActorProxy:UnregisterTaskCB()
    if self.TaskOnPauseReminder == 0 then
        return
    end

    self:UnregisterTaskTagCB("PlayerCombat")
    self:UnregisterTaskTagCB("OpenPage")
    self:UnregisterTaskTagCB("OpenMainPage")
end

function BaseActorProxy:GetChallengeBestValue(arg1)
    return self.uActor:GetChallengeBestValue(arg1)
end

function BaseActorProxy:GetChallengeRecordCurrValue(arg1)
    return self.uActor:GetChallengeRecordCurrValue(arg1)
end

function BaseActorProxy:BattleUIStart(arg1, arg2, arg3, arg4, arg5)
    self.uActor:BattleUIStart(arg1, arg2, arg3, arg4, arg5)
end

function BaseActorProxy:BattleUIChange(arg1, arg2, arg3, arg4)
    self.uActor:BattleUIChange(arg1, arg2, arg3, arg4)
end

function BaseActorProxy:BattleUITerminate()
    self.uActor:BattleUITerminate()
end

function BaseActorProxy:NatlanBallVSStart(total, teammateID, teammatePictureID, teammateGroupID, teammateInstID, teammateGVKey, opponentID, opponentPictureID, opponentGroupID, opponentInstID, opponentGVKey)
    self.uActor:NatlanBallVSStart({
        total = total,
        teammateID = teammateID,
        teammatePictureID = teammatePictureID,
        teammateGroupID = teammateGroupID,
        teammateInstID = teammateInstID,
        teammateGVKey = teammateGVKey,
        opponentID = opponentID,
        opponentPictureID = opponentPictureID,
        opponentGroupID = opponentGroupID,
        opponentInstID = opponentInstID,
        opponentGVKey = opponentGVKey
    })
end

function BaseActorProxy:NatlanBallVSEnd()
    self.uActor:NatlanBallVSEnd()
end

function BaseActorProxy:IsTalkDialogActive()
    return self.uActor:IsTalkDialogActive()
end

function BaseActorProxy:IsGivenDialogActive()
    return self.uActor:IsGivenDialogActive()
end

function BaseActorProxy:GetQuestGlobalVar(arg1)
    return self.uActor:GetQuestGlobalVar(arg1)
end

function BaseActorProxy:GetTaskVar(arg1, arg2)
    return self.uActor:GetTaskVar(arg1, arg2)
end

function BaseActorProxy:ShowCommonTips(arg1, arg2, arg3)
    return self.uActor:ShowCommonTips(arg1, arg2, arg3)
end

function BaseActorProxy:CloseCommonTips()
    return self.uActor:CloseCommonTips()
end

function BaseActorProxy:ShowDragonSpineWeaponDialog()
    return self.uActor:ShowDragonSpineWeaponDialog()
end

function BaseActorProxy:ShowWeaponInfoDialog(arg1)
    return self.uActor:ShowWeaponInfoDialog(arg1)
end

function BaseActorProxy:OnReuse(arg1)
    return self.uActor:OnReuse(true, arg1)
end

function BaseActorProxy:ReInit()
    return self.uActor:ReInit()
end

function BaseActorProxy:ForceRefreshDaily()
    self.uActor:ForceRefreshDaily()
end

function BaseActorProxy:InvokeOnAppear()
    self:OnAppear()
end

function BaseActorProxy:OnAppear() end

function BaseActorProxy:InvokeOnDisappear()
    self:OnDisappear()
end

function BaseActorProxy:OnDisappear() end

function BaseActorProxy:SelectByPlayerIsMale(arg1, arg2)
    if actorUtils.IsMalePlayer() then
        return arg1
    else
        return arg2
    end
end

function BaseActorProxy:FindTableIndex(arg1, arg2)
    if arg1 == nil then
        return 0
    end

    for i, v in ipairs(arg1) do
        if v == arg2 then
            return i
        end
    end

    return 0
end

function BaseActorProxy:RemoveTableElement(arg1, arg2)
    if arg1 == nil or arg2 == nil then
        return 0
    end

    for i, v in ipairs(arg1) do
        if v == arg2 then
            table.remove(arg1, i)
            return i
        end
    end

    return 0
end

function BaseActorProxy:Log(arg1)
    actorUtils.Log(arg1)
end

function BaseActorProxy:LogError(arg1)
    actorUtils.LogError(arg1)
end

function BaseActorProxy:LogWarning(arg1)
    actorUtils.LogWarning(arg1)
end

function BaseActorProxy:VeryImportantError(arg1, arg2, arg3, arg4, arg5, arg6)
    if arg2 == nil then
        arg2 = 1
    end

    if arg3 == nil then
        arg3 = 19
    end

    if arg4 == nil then
        arg4 = ""
    end

    if arg5 == nil then
        arg5 = true
    end

    if arg6 == nil then
        arg6 = ""
    end

    actorUtils.VeryImportantError(arg1, arg2, arg3, arg4, arg5, 0, 0, arg6)
end

function BaseActorProxy:VeryImportantWarning(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = true
    end

    if arg3 == nil then
        arg3 = true
    end

    actorUtils.VeryImportantWarning(arg1, arg2, arg3)
end

function BaseActorProxy:DeployStory(arg1, arg2)
    actorUtils.DeployStory(arg1, arg2)
end

function BaseActorProxy:CancelStory(arg1, arg2)
    actorUtils.CancelStory(arg1, arg2)
end

return BaseActorProxy
